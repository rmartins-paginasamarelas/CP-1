# Define the file name
file_name = "estelas.txt"
file_name_fonemas = "tabelacaracteresfonemas.txt"

# Initialize a dictionary to store the count of triplets
triplet_counts = {}

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

        # Split the line into triplets and count occurrences
        triplets = cleaned_line.split('-')
        for i in range(len(triplets) - 2):
            triplet = f"{fonemas.get(triplets[i], '')}({triplets[i]})-" \
                      f"{fonemas.get(triplets[i+1], '')}({triplets[i+1]})-" \
                      f"{fonemas.get(triplets[i+2], '')}({triplets[i+2]})"
            if len(triplet) > 5:
                triplet_counts[triplet] = triplet_counts.get(triplet, 0) + 1

# Sort the triplets by the number of occurrences
sorted_triplets = sorted(triplet_counts.items(), key=lambda x: x[1], reverse=True)

print("\nContagens de triplas de caracteres com mais do que uma ocorrência:")

# Print the sorted result
for triplet, count in sorted_triplets:
    if count > 1:
        if len(triplet) > 6: print(f"Triplet: {triplet}, Count: {count}")
