import os

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def search_in_file(file_path, search_string, search_type):
    with open(file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()

    results = []

    # Remove parentheses and convert to lowercase
    search_string = search_string.replace('(', '').replace(')', '').lower()

    for line in lines:
        columns = line.strip().split('\t')
        if len(columns) > 1:
            second_column_words = columns[1].split()
            if second_column_words:
                second_word = second_column_words[0].lower()  # Convert to lowercase
                if search_type == 1:
                    # Search only in the first characters of the second word
                    if second_word.startswith(search_string):
                        results.append(line.strip())
                elif search_type == 2:
                    # Search only in between the line (not in the start or the end) of the second word
                    if search_string in second_word:
                        results.append(line.strip())
                elif search_type == 3:
                    # Search only in the last characters of the second word
                    if second_word.endswith(search_string):
                        results.append(line.strip())
                else:
                    print("Tipo de busca inválido. Use 1, 2 ou 3 !")

    return results

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
    results = search_in_file(file_path, search_string, search_type)

    if results:
        print("Resultados da procura:")
        for result in results:
            print(result)
    else:
        print("Nada encontrado.")