# Define the file names
file_name = "estelas.txt"
phonetic_file = "tabelacaracteresfonemas.txt"

# Read the phonetic values from the file
phonetic_values = {}
with open(phonetic_file, 'r') as phonetic_file:
    for line in phonetic_file:
        parts = line.strip().split(':')
        if len(parts) == 2:
            character_number, phonetic_value = parts[0], parts[1]
            phonetic_values[character_number] = phonetic_value.strip()

# Initialize a dictionary to store the count of quartets
quartet_counts = {}

# Read the file and process each line
with open(file_name, 'r') as file:
    for line in file:
        # Remove newline characters
        cleaned_line = line.strip()

        # Split the line into quartets and count occurrences
        quartets = cleaned_line.split('-')
        for i in range(len(quartets) - 3):
            first_character, second_character, third_character, fourth_character = (
                quartets[i], quartets[i+1], quartets[i+2], quartets[i+3]
            )

            # Get the phonetic values for the characters
            first_phonetic = phonetic_values.get(first_character, '')
            second_phonetic = phonetic_values.get(second_character, '')
            third_phonetic = phonetic_values.get(third_character, '')
            fourth_phonetic = phonetic_values.get(fourth_character, '')

            # Combine the quartet with phonetic values
            quartet = f"{first_character}({first_phonetic})-{second_character}({second_phonetic})" \
                      f"-{third_character}({third_phonetic})-{fourth_character}({fourth_phonetic})"
            if len(quartet) > 10:
                quartet_counts[quartet] = quartet_counts.get(quartet, 0) + 1

# Sort the quartets by the number of occurrences
sorted_quartets = sorted(quartet_counts.items(), key=lambda x: x[1], reverse=True)

total_count = sum(count for quartet, count in sorted_quartets)

print("\nContagens de quartetos de caracteres com mais do que uma ocorrência:")

# Print the sorted result with relative percentage
for quartet, count in sorted_quartets:
    if count > 1:
        percentage = (count / total_count) * 100 if total_count != 0 else 0
        print(f"Quartet: {quartet}, Count: {count}, Percentage: {percentage:.2f}%")
