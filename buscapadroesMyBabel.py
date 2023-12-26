def search_word_in_file_in_second_column(word, file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        for line_number, line in enumerate(file, start=1):
            # Split the line into columns using tabs
            columns = line.strip().split('\t')

            # Check if there is a second column and if the lowercase input word is present in the lowercase second column
            if len(columns) >= 2 and word.lower() in columns[1].lower():
                print(f"Line {line_number}: {line.strip()}")


# Specify the file path
file_path = 'mybabelLinguasSelectasPalavrasFunerarias.txt'  # Change this to the actual file path

while True:
    # Get user input for the word to search
    input_word = input("Enter the word to search for in the second column (enter '0' to exit): ")

    # Check if the user wants to exit
    if input_word == '0':
        print("Exiting the program.")
        break

    # Call the search_word_in_file_in_second_column function
    search_word_in_file_in_second_column(input_word, file_path)
