# Define o nome do arquivo
nome_arquivo = "estelas.txt"

# Inicializa um dicionário para armazenar a contagem de quatordecuplos
contagem_quatordecuplos = {}

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

        # Divide a linha em quatordecuplos e conta as ocorrências
        quatordecuplos = linha_limpa.split('-')
        for i in range(len(quatordecuplos) - 13):
            first_character, second_character, third_character, fourth_character, fifth_character, \
            sixth_character, seventh_character, eighth_character, ninth_character, tenth_character, \
            eleventh_character, twelfth_character, thirteenth_character, fourteenth_character = (
                quatordecuplos[i], quatordecuplos[i+1], quatordecuplos[i+2], quatordecuplos[i+3],
                quatordecuplos[i+4], quatordecuplos[i+5], quatordecuplos[i+6], quatordecuplos[i+7],
                quatordecuplos[i+8], quatordecuplos[i+9], quatordecuplos[i+10], quatordecuplos[i+11],
                quatordecuplos[i+12], quatordecuplos[i+13]
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

            # Combine the quatordecuplo with phonetic values
            quatordecuplo = (
                f"{first_character}({first_phonetic})-{second_character}({second_phonetic})-"
                f"{third_character}({third_phonetic})-{fourth_character}({fourth_phonetic})-"
                f"{fifth_character}({fifth_phonetic})-{sixth_character}({sixth_phonetic})-"
                f"{seventh_character}({seventh_phonetic})-{eighth_character}({eighth_phonetic})-"
                f"{ninth_character}({ninth_phonetic})-{tenth_character}({tenth_phonetic})-"
                f"{eleventh_character}({eleventh_phonetic})-{twelfth_character}({twelfth_phonetic})-"
                f"{thirteenth_character}({thirteenth_phonetic})-{fourteenth_character}({fourteenth_phonetic})"
            )

            if len(quatordecuplo) > 27:
                contagem_quatordecuplos[quatordecuplo] = contagem_quatordecuplos.get(quatordecuplo, 0) + 1

# Ordena os quatordecuplos pela quantidade de ocorrências
quatordecuplos_ordenados = sorted(contagem_quatordecuplos.items(), key=lambda x: x[1], reverse=True)

total_contagem = sum(contagem for quatordecuplo, contagem in quatordecuplos_ordenados)

print("\nContagens de quatordecuplos de caracteres com mais do que uma ocorrência:")

# Imprime o resultado ordenado com a porcentagem relativa
for quatordecuplo, contagem in quatordecuplos_ordenados:
    if contagem > 1 and len(quatordecuplo) > 27:
        porcentagem = (contagem / total_contagem) * 100 if total_contagem != 0 else 0
        print(f"Quatordecuplo: {quatordecuplo}, Contagem: {contagem}, Porcentagem: {porcentagem:.2f}%")
