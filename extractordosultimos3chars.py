def count_and_calculate_percentage(input_file_path, output_file_path):
    with open(input_file_path, 'r', encoding='utf-8') as input_file:
        # Read all lines from the input file
        lines = input_file.readlines()

    # Extract the last three characters from each line, ignoring '(' and ')' characters and spaces
    last_three_chars = [line.strip().replace('(', '').replace(')', '').replace(' ', '')[-3:] for line in lines]

    # Count occurrences of each group of 3 characters
    counts = {}
    total_count = 0

    for chars in last_three_chars:
        if chars in counts:
            counts[chars] += 1
        else:
            counts[chars] = 1
        total_count += 1

    # Sort by percentage in descending order
    sorted_counts = sorted(counts.items(), key=lambda x: x[1], reverse=True)

    with open(output_file_path, 'w', encoding='utf-8') as output_file:
        # Write the sorted counts and percentages to the output file
        for chars, count in sorted_counts:
            percentage = (count / total_count) * 100 if total_count != 0 else 0
            output_line = f"{chars}: {count} occurrences ({percentage:.2f}%)"
            output_file.write(output_line + '\n')

# Example usage:
input_file_path = "output_last_three_chars.txt"
output_file_path = "output_sorted_counts_and_percentages.txt"

count_and_calculate_percentage(input_file_path, output_file_path)
print(f"Sorted counts and percentages written to {output_file_path}")
