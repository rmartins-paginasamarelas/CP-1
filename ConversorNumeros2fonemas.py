# Define the file names
estelas_file = "estelas.txt"
fonemas_file = "tabelacaracteresfonemas.txt"
output_file = "estelas_phonetic.txt"

# Create a dictionary to store character numbers and their corresponding phonetic values
character_phonetics = {}

# Read the "tabelacaracteresfonemas.txt" file and populate the dictionary
with open(fonemas_file, 'r', encoding='utf-8') as fonemas:
    for line in fonemas:
        parts = line.strip().split(':')
        if len(parts) == 2:
            character_number = parts[0].strip()
            phonetic_value = parts[1].strip()
            character_phonetics[character_number] = phonetic_value

# Read the "estelas.txt" file, look up phonetic values, and create a new file
with open(estelas_file, 'r', encoding='utf-8') as estelas, open(output_file, 'w', encoding='utf-8') as output:
    inscription_number = 1
    for line in estelas:
        # Extract character numbers from each line
        character_numbers = [char.strip() for char in line.split('-') if char.strip()]

        # Look up phonetic values
        phonetic_values = [character_phonetics.get(char, char) for char in character_numbers]

        # Add "Inscrição" string and sequential number to the beginning of each line
        output_line = f"Inscrição {inscription_number}: {''.join(phonetic_values)}"
        output.write(output_line + '\n')

        # Increment the sequential number
        inscription_number += 1

print(f"Phonetic values with Inscrição numbers written to {output_file}")
