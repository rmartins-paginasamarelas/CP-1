import re

def search_in_file(file, word):
    results = []
    for line_number, line in enumerate(file, start=1):
        # Remove characters "(" and ")" and check if the input word or its variations exist in the line (case-insensitive)
        line_cleaned = line.replace("(", "").replace(")", "").replace("ae", "").replace("us", "").replace("i", "u").replace("e", "o").replace("o", "e").replace("ll", "l")

        # Replace "?" with "." to match any character
        search_pattern = word.replace("?", ".")

        if re.search(search_pattern, line_cleaned, re.IGNORECASE):
            results.append((line_number, line.strip()))
    return results

def print_results(results):
    if results:
        for line_number, line in results:
            print(f"{line}")
    else:
        print("No results found.")

def search_variations(input_word, file_path):
    total_entries = 0
    searched_lines = 0

    with open(file_path, 'r', encoding='utf-8') as file:
        # Count all lines in the file
        total_lines = len(file.readlines())
        file.seek(0)  # Reset the file cursor back to the beginning

        # Convert input_word to lowercase for case-insensitive comparison
        input_word_lower = input_word.lower()

        # Search for the original input_word
        results = search_in_file(file, input_word_lower)
        total_entries += len(results)
        searched_lines += total_lines

        # If no results and "ae" or "us" are in the input_word, search without them
        if not results and ('ae' in input_word_lower or 'us' in input_word_lower):
            modified_word = input_word_lower.replace('ae', '').replace('us', '')
            results = search_in_file(file, modified_word)
            total_entries += len(results)
            searched_lines += total_lines  # Count additional lines searched

        # If still no results and "b" or "v" is in the input_word, search for the other character
        if not results and ('b' in input_word_lower or 'v' in input_word_lower):
            other_char = 'v' if 'b' in input_word_lower else 'b'
            modified_word = input_word_lower.replace('b', other_char).replace('v', other_char)
            results = search_in_file(file, modified_word)
            total_entries += len(results)
            searched_lines += total_lines  # Count additional lines searched

        # Print the results
        print_results(results)

    return total_entries, searched_lines, total_lines

# ... (other functions and code)

while True:
    # Get user input for the word to search
    input_word = input("Enter the word to search for (enter '0' to exit): ")

    # Check if the user wants to exit
    if input_word == '0':
        print("Exiting the program.")
        break

    # Specify the file path
    file_path = 'estelas_phonetic.txt'  # Change this to the actual file path

    # Call the search_variations function and print the total number of entries, searched lines, and total lines in the file
    total_entries, searched_lines, total_lines = search_variations(input_word, file_path)
    print(f"The searched word was: {input_word}")
    print(f"Total number of entries: {total_entries} in Total number of lines searched: {searched_lines}")

    # Calculate the percentage of found search characters in the total count of characters
    percentage_found = (total_entries / total_lines) * 100
    print(f"Percentage of found search lines in the total count of characters: {percentage_found:.2f}%")
    print("---------------")
