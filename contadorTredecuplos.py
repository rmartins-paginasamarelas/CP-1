# Define o nome do arquivo
nome_arquivo = "estelas.txt"
nome_arquivo_fonemas = "tabelacaracteresfonemas.txt"

# Inicializa um dicionário para armazenar a contagem de tredecuplos
contagem_tredecuplos = {}

# Lê o arquivo de fonemas e armazena os valores em um dicionário
fonemas = {}
with open(nome_arquivo_fonemas, 'r') as arquivo_fonemas:
    for linha in arquivo_fonemas:
        numero, fonema = linha.strip().split(':')
        fonemas[numero] = fonema

# Lê o arquivo e processa cada linha
with open(nome_arquivo, 'r') as arquivo:
    for linha in arquivo:
        # Remove caracteres de quebra de linha
        linha_limpa = linha.strip()

        # Divide a linha em tredecuplos e conta as ocorrências
        tredecuplos = linha_limpa.split('-')
        for i in range(len(tredecuplos) - 12):
            tredecuplo = f"{fonemas.get(tredecuplos[i], '')}({tredecuplos[i]})-" \
                          f"{fonemas.get(tredecuplos[i+1], '')}({tredecuplos[i+1]})-" \
                          f"{fonemas.get(tredecuplos[i+2], '')}({tredecuplos[i+2]})-" \
                          f"{fonemas.get(tredecuplos[i+3], '')}({tredecuplos[i+3]})-" \
                          f"{fonemas.get(tredecuplos[i+4], '')}({tredecuplos[i+4]})-" \
                          f"{fonemas.get(tredecuplos[i+5], '')}({tredecuplos[i+5]})-" \
                          f"{fonemas.get(tredecuplos[i+6], '')}({tredecuplos[i+6]})-" \
                          f"{fonemas.get(tredecuplos[i+7], '')}({tredecuplos[i+7]})-" \
                          f"{fonemas.get(tredecuplos[i+8], '')}({tredecuplos[i+8]})-" \
                          f"{fonemas.get(tredecuplos[i+9], '')}({tredecuplos[i+9]})-" \
                          f"{fonemas.get(tredecuplos[i+10], '')}({tredecuplos[i+10]})-" \
                          f"{fonemas.get(tredecuplos[i+11], '')}({tredecuplos[i+11]})-" \
                          f"{fonemas.get(tredecuplos[i+12], '')}({tredecuplos[i+12]})"
            if len(tredecuplo) > 25:
                contagem_tredecuplos[tredecuplo] = contagem_tredecuplos.get(tredecuplo, 0) + 1

# Ordena os tredecuplos pela quantidade de ocorrências
tredecuplos_ordenados = sorted(contagem_tredecuplos.items(), key=lambda x: x[1], reverse=True)

total_contagem = sum(contagem for tredecuplo, contagem in tredecuplos_ordenados)

print("\nContagens de tredecuplos de caracteres com mais do que uma ocorrência:")

# Imprime o resultado ordenado com a porcentagem relativa
for tredecuplo, contagem in tredecuplos_ordenados:
    if contagem > 1 and len(tredecuplo) > 25:
        porcentagem = (contagem / total_contagem) * 100 if total_contagem != 0 else 0
        print(f"Tredecuplo: {tredecuplo}, Contagem: {contagem}, Porcentagem: {porcentagem:.2f}%")
