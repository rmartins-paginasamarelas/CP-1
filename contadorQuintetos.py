# Define the file names
estelas_file = "estelas.txt"
phonetic_file = "tabelacaracteresfonemas.txt"

# Read phonetic values from the phonetic file into a dictionary
phonetic_values = {}
with open(phonetic_file, 'r') as phonetic_file:
    for line in phonetic_file:
        character, phonetic_value = line.strip().split(':')
        phonetic_values[character] = phonetic_value

# Initialize a dictionary to store the count of quintets
quintet_counts = {}

# Read the file and process each line
with open(estelas_file, 'r') as file:
    for line in file:
        # Remove newline characters
        cleaned_line = line.strip()

        # Split the line into quintets and count occurrences
        quintets = cleaned_line.split('-')
        for i in range(len(quintets) - 4):
            quintet = f"{phonetic_values.get(quintets[i], '')}({quintets[i]})-" \
                      f"{phonetic_values.get(quintets[i+1], '')}({quintets[i+1]})-" \
                      f"{phonetic_values.get(quintets[i+2], '')}({quintets[i+2]})-" \
                      f"{phonetic_values.get(quintets[i+3], '')}({quintets[i+3]})-" \
                      f"{phonetic_values.get(quintets[i+4], '')}({quintets[i+4]})"
            if len(quintet) > 9:
                quintet_counts[quintet] = quintet_counts.get(quintet, 0) + 1

# Sort the quintets by the number of occurrences
sorted_quintets = sorted(quintet_counts.items(), key=lambda x: x[1], reverse=True)

total_count = sum(count for quintet, count in sorted_quintets)

print("\nContagens de quintetos de caracteres com mais do que uma ocorrência:")

# Print the sorted result with relative percentage
for quintet, count in sorted_quintets:
    if count > 1 and len(quintet) > 10:
        percentage = (count / total_count) * 100 if total_count != 0 else 0
        print(f"Quintet: {quintet}, Count: {count}, Percentage: {percentage:.2f}%")
