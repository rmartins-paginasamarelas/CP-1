# Define o nome do arquivo
nome_arquivo = "estelas.txt"

# Inicializa um dicionário para armazenar a contagem de quindecuplos
contagem_quindecuplos = {}

# Lê o arquivo de fonemas e cria um dicionário de mapeamento de caracteres para fonemas
with open("tabelacaracteresfonemas.txt", 'r') as fonemas_arquivo:
    # Cria um dicionário com mapeamento de caracteres para fonemas
    phonetic_values = {}
    for linha_fonema in fonemas_arquivo:
        numero, _, fonema = linha_fonema.strip().partition(':')
        phonetic_values[numero.strip()] = fonema.strip()

# Lê o arquivo e processa cada linha
with open(nome_arquivo, 'r') as arquivo:
    for linha in arquivo:
        # Remove caracteres de quebra de linha
        linha_limpa = linha.strip()

        # Divide a linha em quindecuplos e conta as ocorrências
        quindecuplos = linha_limpa.split('-')
        for i in range(len(quindecuplos) - 14):
            first_character, second_character, third_character, fourth_character, fifth_character, \
            sixth_character, seventh_character, eighth_character, ninth_character, tenth_character, \
            eleventh_character, twelfth_character, thirteenth_character, fourteenth_character, \
            fifteenth_character = (
                quindecuplos[i], quindecuplos[i+1], quindecuplos[i+2], quindecuplos[i+3],
                quindecuplos[i+4], quindecuplos[i+5], quindecuplos[i+6], quindecuplos[i+7],
                quindecuplos[i+8], quindecuplos[i+9], quindecuplos[i+10], quindecuplos[i+11],
                quindecuplos[i+12], quindecuplos[i+13], quindecuplos[i+14]
            )

            # Get the phonetic values for the characters
            first_phonetic = phonetic_values.get(first_character, '')
            second_phonetic = phonetic_values.get(second_character, '')
            third_phonetic = phonetic_values.get(third_character, '')
            fourth_phonetic = phonetic_values.get(fourth_character, '')
            fifth_phonetic = phonetic_values.get(fifth_character, '')
            sixth_phonetic = phonetic_values.get(sixth_character, '')
            seventh_phonetic = phonetic_values.get(seventh_character, '')
            eighth_phonetic = phonetic_values.get(eighth_character, '')
            ninth_phonetic = phonetic_values.get(ninth_character, '')
            tenth_phonetic = phonetic_values.get(tenth_character, '')
            eleventh_phonetic = phonetic_values.get(eleventh_character, '')
            twelfth_phonetic = phonetic_values.get(twelfth_character, '')
            thirteenth_phonetic = phonetic_values.get(thirteenth_character, '')
            fourteenth_phonetic = phonetic_values.get(fourteenth_character, '')
            fifteenth_phonetic = phonetic_values.get(fifteenth_character, '')

            # Combine the quindecuplo with phonetic values
            quindecuplo = (
                f"{first_character}({first_phonetic})-{second_character}({second_phonetic})-"
                f"{third_character}({third_phonetic})-{fourth_character}({fourth_phonetic})-"
                f"{fifth_character}({fifth_phonetic})-{sixth_character}({sixth_phonetic})-"
                f"{seventh_character}({seventh_phonetic})-{eighth_character}({eighth_phonetic})-"
                f"{ninth_character}({ninth_phonetic})-{tenth_character}({tenth_phonetic})-"
                f"{eleventh_character}({eleventh_phonetic})-{twelfth_character}({twelfth_phonetic})-"
                f"{thirteenth_character}({thirteenth_phonetic})-{fourteenth_character}({fourteenth_phonetic})-"
                f"{fifteenth_character}({fifteenth_phonetic})"
            )

            if len(quindecuplo) > 29:
                contagem_quindecuplos[quindecuplo] = contagem_quindecuplos.get(quindecuplo, 0) + 1

# Ordena os quindecuplos pela quantidade de ocorrências
quindecuplos_ordenados = sorted(contagem_quindecuplos.items(), key=lambda x: x[1], reverse=True)

total_contagem = sum(contagem for quindecuplo, contagem in quindecuplos_ordenados)

print("\nContagens de quindecuplos de caracteres com mais do que uma ocorrência:")

# Imprime o resultado ordenado com a porcentagem relativa
for quindecuplo, contagem in quindecuplos_ordenados:
    if contagem > 1 and len(quindecuplo) > 29:
        porcentagem = (contagem / total_contagem) * 100 if total_contagem != 0 else 0
        print(f"Quindecuplo: {quindecuplo}, Contagem: {contagem}, Porcentagem: {porcentagem:.2f}%")
