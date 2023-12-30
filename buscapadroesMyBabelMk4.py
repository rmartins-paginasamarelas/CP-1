import os

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def search_in_file(file_path, search_string, search_type):
    with open(file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()

    results = []
    replacement_used = None

    # Remove parentheses and convert to lowercase
    search_string_original = search_string
    search_string = search_string.replace('(', '').replace(')', '').lower()

    replacements = [
        ('a', 'e'),
        ('a', 'i'),
        ('e', 'i'),
        ('ee', 'e'),
        ('iom', 'io'),
        ('k', 'c'),
        ('k', 'g'),
        ('kis', 'ki'),
        ('lens', 'les'),
        ('sa', 's'),
        ('ss', 's'),
        ('u', 'es'),
        ('is', 'i'),
        ('kos', 's'),
        ('um', 'u')
    ]

    for replacement in replacements:
        replaced_search_string = search_string.replace(*replacement)

        for line in lines:
            columns = line.strip().split('\t')
            if len(columns) > 1:
                second_column_words = columns[1].split()
                if second_column_words:
                    second_word = second_column_words[0].lower()
                    if search_type == 1 and second_word.startswith(replaced_search_string):
                        results.append(line.strip())
                    elif search_type == 2 and replaced_search_string in second_word:
                        results.append(line.strip())
                    elif search_type == 3 and second_word.endswith(replaced_search_string):
                        results.append(line.strip())

        if results:
            replacement_used = replacement
            break  # Stop searching if results are found

    return results, search_string_original, replacement_used

# Specify the file path
file_path = 'mybabelLinguasSelectasPalavrasFunerariasTabs.txt'  # Change this to the actual file path

while True:
    # Get user input for the search string and type
    search_string = input("Introduza a string procurada (ou '0' para sair do programa): ")

    # Check if the user wants to exit
    if search_string == '0':
        print("Saindo do programa.")
        break

    search_type = int(input("Que tipo de busca? (1 prefixo/tema, 2 meio, 3 sufixo/terminação): "))

    # Clear the screen before displaying results
    clear_screen()

    # Call the search_in_file function and print the results
    results, original_search_string, replacement_used = search_in_file(file_path, search_string, search_type)

    if results:
        print("Resultados da procura:")
        for result in results:
            print(result)
    else:
        print(f"Nada encontrado. A string original foi: {original_search_string}")
        if replacement_used:
            print(f"Substituição utilizada: {replacement_used}")