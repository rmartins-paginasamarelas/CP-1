def count_string_occurrences(file_path, target_string):
    total_lines = 0
    count = 0
    with open(file_path, 'r', encoding='utf-8') as file:
        for line in file:
            total_lines += 1

            # Extract the first 3 characters from each line
            first_three_chars = line.strip()[:3]

            # Check if the first 3 characters match the target string
            if first_three_chars == target_string:
                count += 1

    # Calculate the percentage of lines where the three characters appear
    percentage = (count / total_lines) * 100 if total_lines != 0 else 0

    return count, percentage, total_lines

# Get user input for the three-character string
target_string = input("Enter the three-character string to count: ")

# Specify the file path
file_path = "estelas.txt"

# Call the function and print the result
occurrence_count, percentage, total_lines = count_string_occurrences(file_path, target_string)
print(f"The string '{target_string}' appears at the beginning of a line {occurrence_count} times in 'estelas.txt'.")
print(f"It appears in {percentage:.2f}% of the total lines.")
print(f"Total number of lines searched: {total_lines}")
