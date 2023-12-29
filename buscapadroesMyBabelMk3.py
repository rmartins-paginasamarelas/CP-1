import os

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def search_in_file(file_path, search_string, search_type):
    with open(file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()

    results = []

    for line in lines:
        columns = line.strip().split('\t')
        if len(columns) > 1:
            second_column_words = columns[1].split()
            if second_column_words:
                second_word = second_column_words[0]  # Select the first word from the second column
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
                    print("Invalid search type. Please enter 1, 2, or 3.")

    return results

# Specify the file path
file_path = 'mybabelLinguasSelectasPalavrasFunerariasTabs.txt'  # Change this to the actual file path

while True:
    # Get user input for the search string and type
    search_string = input("Enter the search string (enter '0' to exit): ")

    # Check if the user wants to exit
    if search_string == '0':
        print("Exiting the program.")
        break

    search_type = int(input("Enter the search type (1 for prefix/tema, 2 for in entre palavras, 3 for sufixo/terminação): "))

    # Clear the screen before displaying results
    clear_screen()

    # Call the search_in_file function and print the results
    results = search_in_file(file_path, search_string, search_type)

    if results:
        print("Search results:")
        for result in results:
            print(result)
    else:
        print("No results found.")
