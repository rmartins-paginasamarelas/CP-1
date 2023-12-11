# Define the file name
file_name = "estelas.txt"
file_name_fonemas = "tabelacaracteresfonemas.txt"

# Initialize a dictionary to store the count of sextets
sextet_counts = {}

# Read the file of phonemes and store the values in a dictionary
fonemas = {}
with open(file_name_fonemas, 'r') as file_fonemas:
    for line in file_fonemas:
        numero, fonema = line.strip().split(':')
        fonemas[numero] = fonema

# Read the file and process each line
with open(file_name, 'r') as file:
    for line in file:
        # Remove newline characters
        cleaned_line = line.strip()

        # Split the line into sextets and count occurrences
        sextets = cleaned_line.split('-')
        for i in range(len(sextets) - 5):
            sextet = f"{fonemas.get(sextets[i], '')}({sextets[i]})-" \
                     f"{fonemas.get(sextets[i+1], '')}({sextets[i+1]})-" \
                     f"{fonemas.get(sextets[i+2], '')}({sextets[i+2]})-" \
                     f"{fonemas.get(sextets[i+3], '')}({sextets[i+3]})-" \
                     f"{fonemas.get(sextets[i+4], '')}({sextets[i+4]})-" \
                     f"{fonemas.get(sextets[i+5], '')}({sextets[i+5]})"
            if len(sextet) > 11:
                sextet_counts[sextet] = sextet_counts.get(sextet, 0) + 1

# Sort the sextets by the number of occurrences
sorted_sextets = sorted(sextet_counts.items(), key=lambda x: x[1], reverse=True)

total_count = sum(count for sextet, count in sorted_sextets)

print("\nContagens de sextetos de caracteres com mais do que uma ocorrência:")

# Print the sorted result with relative percentage
for sextet, count in sorted_sextets:
    if count > 1 and len(sextet) > 11:
        percentage = (count / total_count) * 100 if total_count != 0 else 0
        print(f"Sextet: {sextet}, Count: {count}, Percentage: {percentage:.2f}%")
