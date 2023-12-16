def search_variations(input_word, file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        # Convert input_word to lowercase for case-insensitive comparison
        input_word_lower = input_word.lower()

        # Search for the original input_word
        results = search_in_file(file, input_word_lower)

        # If no results and "ae" or "us" are in the input_word, search without them
        if not results and ('ae' in input_word_lower or 'us' in input_word_lower):
            modified_word = input_word_lower.replace('ae', '').replace('us', '')
            results = search_in_file(file, modified_word)

        # If still no results and "b" or "v" is in the input_word, search for the other character
        if not results and ('b' in input_word_lower or 'v' in input_word_lower):
            other_char = 'v' if 'b' in input_word_lower else 'b'
            modified_word = input_word_lower.replace('b', other_char).replace('v', other_char)
            results = search_in_file(file, modified_word)

        # Print the results
        print_results(results)


def search_in_file(file, word):
    results = []
    for line_number, line in enumerate(file, start=1):
        # Remove characters "(" and ")" and check if the input word or its variations exist in the line (case-insensitive)#
        #line_cleaned = line.replace("(", "").replace(")", "").replace("ae", "").replace("us", "")

        line_cleaned = line.replace("(", "").replace(")", "").replace("ae", "").replace("us", "").replace("e", "o").replace("o", "e").replace("ll", "l")

        if word in line_cleaned.lower():
            results.append((line_number, line.strip()))
    return results

def print_results(results):
    if results:
        for line_number, line in results:
            print(f"Line {line_number}: {line}")
    else:
        print("No results found.")


# Get user input for the word to search
input_word = input("Enter the word to search for: ")

# Specify the file path
file_path = 'estelas_phonetic.txt'  # Change this to the actual file path

# Call the search_variations function
search_variations(input_word, file_path)
