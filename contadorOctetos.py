# Define the file name
file_name = "estelas.txt"

# Initialize a dictionary to store the count of octets
octet_counts = {}

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

        # Split the line into octets and count occurrences
        octets = cleaned_line.split('-')
        for i in range(len(octets) - 7):
            # Construct the octet with numbers and phonetic values
            octet = '-'.join(phonetic_mapping.get(oct, oct) for oct in octets[i:i+8])

            if len(octet) > 15:
                octet_counts[octet] = octet_counts.get(octet, 0) + 1

# Sort the octets by the number of occurrences
sorted_octets = sorted(octet_counts.items(), key=lambda x: x[1], reverse=True)

total_count = sum(count for octet, count in sorted_octets)

print("\nContagens de octetos de caracteres com mais do que uma ocorrência:")

# Print the sorted result with relative percentage
for octet, count in sorted_octets:
    if count > 1 and len(octet) > 15:
        percentage = (count / total_count) * 100 if total_count != 0 else 0
        print(f"Octet: {octet}, Count: {count}, Percentage: {percentage:.2f}%")
