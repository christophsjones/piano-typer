import argparse
import json
import re


LENGTH_MAP = {
    1: "Whole",
    2: "Half",
    4: "Quarter",
    8: "Eighth",
    16: "Sixteenth",
}

def parse_beatmap(input_text):
    all_lines_data = []

    lines = [line for line in input_text.strip().split('\n') if line.strip()]
    measureLength = 16

    for line in lines:
        line = line.strip()
        line_data = []
        measures = re.split(r'\s+', line)
        line_num = 1

        for measure_str in measures:
            if not measure_str:
                continue

            if measure_str[0] == '[':
                idx = measure_str.index(']')
                metadata = measure_str[1:idx]
                measure_str = measure_str[idx+1:]

                # only supports changing measure lengths right now
                measureLength = int(metadata)

            try:
                sanitized_str = measure_str
                sanitized_str = re.sub(r'\([^\)]*\)', 'X', sanitized_str)
                notes_in_measure = len(sanitized_str)

                note_length = 1
                if notes_in_measure != 1:
                    note_length = notes_in_measure * 16 / measureLength
                note_length_str = LENGTH_MAP[note_length]

                notes = []
                position = 0

                pt = 0

                while pt < len(measure_str):
                    c = measure_str[pt]
                    if c == '.':
                        notes.append({"length": note_length_str, "position": position, "isRest": True})
                    elif c == '(':
                        endpt = measure_str.index(')', pt)
                        for chr in range(pt + 1, endpt):
                            notes.append({"letter": measure_str[chr], "length": note_length_str, "position": position})
                        pt = endpt
                    else:
                        notes.append({"letter": c, "length": note_length_str, "position": position})
                    position += int(16 / note_length)
                    pt += 1

                if measureLength != 16:
                    if 'isRest' in notes[0] and notes[0]['isRest']:
                        notes[0]['measureLength'] = measureLength
                    else:
                        notes.insert(0, {"length": LENGTH_MAP[16], "position": 0, "measureLength": measureLength})
                
                pt = 0
                while pt < len(notes) - 1:
                    lex = [k for k in LENGTH_MAP.keys() if LENGTH_MAP[k] == notes[pt]['length']][0]
                    if lex <= 4:
                        pt += 1
                        continue

                    if 'isRest' in notes[pt] and 'isRest' in notes[pt + 1] and notes[pt]['length'] == notes[pt + 1]['length']:
                        notes[pt]['length'] = LENGTH_MAP[lex / 2]
                        del notes[pt + 1]
                        if pt > 0:
                            pt -= 1
                    else:
                        pt += 1

                line_data.append(notes)
                line_num += 1
            except Exception as e:
                print(e)
                print(f'Error on line {line_num}: "{measure_str}"')
                exit(0)

        if line_data:
            all_lines_data.append(line_data)

    return all_lines_data


def prettify_beatmap_json(data):
    # expands the JSON a little to make it more readable
    compact_str = json.dumps(data, separators=(',', ':'))

    objects = re.findall(r'\{.*?\}', compact_str)

    processed_objects = []
    for obj_str in objects:
        processed_obj = re.sub(r'"(\w+)":', r'\1:', obj_str)
        for length_name in LENGTH_MAP.values():
            processed_obj = processed_obj.replace(f'length:"{length_name}"', f'length:{length_name}')
        processed_objects.append(processed_obj)

    # replace all objects with a placeholder
    placeholder_str = re.sub(r'\{.*?\}', '__OBJ__', compact_str)

    pretty_placeholder_str = ""
    indent_level = 0
    for char in placeholder_str:
        if char == '[':
            indent_level += 1
            pretty_placeholder_str += '[\n' + '\t' * indent_level
        elif char == ']':
            indent_level -= 1
            pretty_placeholder_str += '\n' + '\t' * indent_level + ']'
        elif char == ',':
            pretty_placeholder_str += ',\n' + '\t' * indent_level
        else:
            pretty_placeholder_str += char

    obj_iterator = iter(processed_objects)
    final_output = re.sub('__OBJ__', lambda m: next(obj_iterator), pretty_placeholder_str)
    
    return final_output

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('source', help='Source file to read from.')

    args = parser.parse_args()

    with open(args.source, 'r') as fd:
        input_text = fd.read()

    parsed_data = parse_beatmap(input_text)
    output_string = prettify_beatmap_json(parsed_data)

    print(output_string)


if __name__ == "__main__":
    main()