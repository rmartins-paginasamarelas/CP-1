# Specify the input and output file paths
input_file_path = 'mybabelLinguasSelectasPalavrasFunerarias.txt'
output_file_path = 'mybabelLinguasSelectasPalavrasFunerariasTabs.txt'

# Open the input file for reading
with open(input_file_path, 'r', encoding='utf-8') as input_file:
    # Read all lines from the input file
    lines = input_file.readlines()

# Process each line
processed_lines = []
for line in lines:
    # Split the line into words
    words = line.split()

    # Check if there are at least two words in the line
    if len(words) >= 2:
        # Replace spaces with a tab character after the second word
        processed_line = ' '.join(words[:2]) + '\t' + ' '.join(words[2:]) + '\n'
        processed_lines.append(processed_line)
    else:
        # If there are fewer than two words, keep the line unchanged
        processed_lines.append(line)

# Sort processed lines by the first column
processed_lines.sort(key=lambda x: x.split('\t')[0])

# Open the output file for writing
with open(output_file_path, 'w', encoding='utf-8') as output_file:
    # Write the processed lines to the output file
    output_file.writelines(processed_lines)

print(f"Spaces replaced with tabs and output sorted by the first column. Output written to {output_file_path}")
