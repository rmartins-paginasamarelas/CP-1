import os

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def search_in_file(file_path, search_string, search_type):
    with open(file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()

    results = []

    if search_type == 1:
        # Search only in the first characters of the second column
        results = [line.strip() for line in lines if line.split('\t')[1].split()[0].startswith(search_string)]
    elif search_type == 2:
        # Search only in between the line (not in the start or the end) of the second column
        results = [line.strip() for line in lines if search_string in line.split('\t')[1].split()[0]]
    elif search_type == 3:
        # Search only in the last characters of the second column
        results = [line.strip() for line in lines if line.split('\t')[1].split()[-1].endswith(search_string)]
    else:
        print("Invalid search type. Please enter 1, 2, or 3.")

    return results

# Specify the file path
file_path = 'mybabelmk3.txt'  # Change this to the actual file path

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
