# Define o nome do arquivo
nome_arquivo = "estelas.txt"
nome_arquivo_fonemas = "tabelacaracteresfonemas.txt"

# Inicializa um dicionário para armazenar a contagem de undécuplos
contagem_undecuplos = {}

# Read the file of phonemes and store the values in a dictionary
fonemas = {}
with open(nome_arquivo_fonemas, 'r') as file_fonemas:
    for line in file_fonemas:
        numero, fonema = line.strip().split(':')
        fonemas[numero] = fonema

# Lê o arquivo e processa cada linha
with open(nome_arquivo, 'r') as arquivo:
    for linha in arquivo:
        # Remove caracteres de quebra de linha
        linha_limpa = linha.strip()

        # Divide a linha em undécuplos e conta as ocorrências
        undecuplos = linha_limpa.split('-')
        for i in range(len(undecuplos) - 10):
            undecuplo = f"{fonemas.get(undecuplos[i], '')}({undecuplos[i]})-" \
                        f"{fonemas.get(undecuplos[i+1], '')}({undecuplos[i+1]})-" \
                        f"{fonemas.get(undecuplos[i+2], '')}({undecuplos[i+2]})-" \
                        f"{fonemas.get(undecuplos[i+3], '')}({undecuplos[i+3]})-" \
                        f"{fonemas.get(undecuplos[i+4], '')}({undecuplos[i+4]})-" \
                        f"{fonemas.get(undecuplos[i+5], '')}({undecuplos[i+5]})-" \
                        f"{fonemas.get(undecuplos[i+6], '')}({undecuplos[i+6]})-" \
                        f"{fonemas.get(undecuplos[i+7], '')}({undecuplos[i+7]})-" \
                        f"{fonemas.get(undecuplos[i+8], '')}({undecuplos[i+8]})-" \
                        f"{fonemas.get(undecuplos[i+9], '')}({undecuplos[i+9]})-" \
                        f"{fonemas.get(undecuplos[i+10], '')}({undecuplos[i+10]})"
            if len(undecuplo) > 21:
                contagem_undecuplos[undecuplo] = contagem_undecuplos.get(undecuplo, 0) + 1

# Ordena os undécuplos pela quantidade de ocorrências
undecuplos_ordenados = sorted(contagem_undecuplos.items(), key=lambda x: x[1], reverse=True)

total_contagem = sum(contagem for undecuplo, contagem in undecuplos_ordenados)

print("\nContagens de undécuplos de caracteres com mais do que uma ocorrência:")

# Imprime o resultado ordenado com a porcentagem relativa
for undecuplo, contagem in undecuplos_ordenados:
    if contagem > 1 and len(undecuplo) > 21:
        porcentagem = (contagem / total_contagem) * 100 if total_contagem != 0 else 0
        print(f"Undécuplo: {undecuplo}, Contagem: {contagem}, Porcentagem: {porcentagem:.2f}%")
