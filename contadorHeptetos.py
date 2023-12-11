# Define the file name
file_name = "estelas.txt"

# Initialize a dictionary to store the count of heptets
heptet_counts = {}

# Create a dictionary to store character numbers and their corresponding phonetic values
phonetic_mapping = {}
with open("tabelacaracteresfonemas.txt", 'r', encoding='utf-8') as fonemas:
    for line in fonemas:
        parts = line.strip().split(':')
        if len(parts) == 2:
            character_number = parts[0].strip()
            phonetic_value = parts[1].strip()
            phonetic_mapping[character_number] = f"{character_number}({phonetic_value})"

# Read the file and process each line
with open(file_name, 'r') as file:
    for line in file:
        # Remove newline characters
        cleaned_line = line.strip()

        # Split the line into heptets and count occurrences
        heptets = cleaned_line.split('-')
        for i in range(len(heptets) - 6):
            # Construct the heptet with numbers and phonetic values
            heptet = '-'.join(phonetic_mapping.get(hept, hept) for hept in heptets[i:i+7])

            if len(heptet) > 13:
                heptet_counts[heptet] = heptet_counts.get(heptet, 0) + 1

# Sort the heptets by the number of occurrences
sorted_heptets = sorted(heptet_counts.items(), key=lambda x: x[1], reverse=True)

total_count = sum(count for heptet, count in sorted_heptets)

print("\nContagens de heptetos de caracteres com mais do que uma ocorrência:")

# Print the sorted result with relative percentage
for heptet, count in sorted_heptets:
    if count > 1 and len(heptet) > 13:
        percentage = (count / total_count) * 100 if total_count != 0 else 0
        print(f"Heptet: {heptet}, Count: {count}, Percentage: {percentage:.2f}%")
