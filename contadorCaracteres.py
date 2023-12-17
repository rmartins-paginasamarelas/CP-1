def count_occurrences_from_file(file_path, separator, exclude_strings, phonetic_mapping):
    # Read the content of the file
    with open(file_path, 'r') as file:
        content = file.read()

    # Split the content into a list of numbers
    numbers = content.split(separator)

    # Initialize an empty dictionary to store counts
    counts = {}

    # Count occurrences of each number (excluding spaces, newline, and specific strings)
    for number in numbers:
        stripped_number = number.strip()  # Remove leading and trailing spaces
        if stripped_number and stripped_number != "\n" and stripped_number != "" and stripped_number not in exclude_strings:
            # Replace the number with character plus its phonetic value
            character_plus_phonetic = phonetic_mapping.get(stripped_number, stripped_number)
            if character_plus_phonetic in counts:
                counts[character_plus_phonetic] += 1
            else:
                counts[character_plus_phonetic] = 1

    return counts

# Example usage:
file_path = "estelas.txt"
separator = "-"  # Change this to the actual separator used in your file
exclude_strings = ["<quebra de linha>", "<separação>", "??"]  # Add strings to exclude

# Create a dictionary to store character numbers and their corresponding phonetic values
phonetic_mapping = {}
with open("tabelacaracteresfonemas.txt", 'r', encoding='utf-8') as fonemas:
    for line in fonemas:
        parts = line.strip().split(':')
        if len(parts) == 2:
            character_number = parts[0].strip()
            phonetic_value = parts[1].strip()
            phonetic_mapping[character_number] = f"{character_number}-{phonetic_value}"

result = count_occurrences_from_file(file_path, separator, exclude_strings, phonetic_mapping)

# Calculate the total count
total_count = sum(result.values())

# Sort the result by occurrences in descending order
sorted_result = sorted(result.items(), key=lambda x: x[1], reverse=True)

output_file_path = "output_result_count_chars_stelae.txt"  # Change this to the desired output file path

with open(output_file_path, 'w', encoding='utf-8') as output_file:
    print("\nContagem ordenada de frequência de caracteres em todas as estelas:", file=output_file)

    # Print the sorted result with relative percentage
    for number, count in sorted_result:
        percentage = (count / total_count) * 100 if total_count != 0 else 0
        print(f"{number}: {count} occurrences ({percentage:.2f}%)", file=output_file)

print(f"Result has been written to {output_file_path}")
