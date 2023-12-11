# Define o nome do arquivo
nome_arquivo = "estelas.txt"
nome_arquivo_fonemas = "tabelacaracteresfonemas.txt"

# Inicializa um dicionário para armazenar a contagem de sedecuplos
contagem_sedecuplos = {}

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

        # Divide a linha em sedecuplos e conta as ocorrências
        sedecuplos = linha_limpa.split('-')
        for i in range(len(sedecuplos) - 15):
            sedecuplo = f"{fonemas.get(sedecuplos[i], '')}({sedecuplos[i]})-" \
                        f"{fonemas.get(sedecuplos[i+1], '')}({sedecuplos[i+1]})-" \
                        f"{fonemas.get(sedecuplos[i+2], '')}({sedecuplos[i+2]})-" \
                        f"{fonemas.get(sedecuplos[i+3], '')}({sedecuplos[i+3]})-" \
                        f"{fonemas.get(sedecuplos[i+4], '')}({sedecuplos[i+4]})-" \
                        f"{fonemas.get(sedecuplos[i+5], '')}({sedecuplos[i+5]})-" \
                        f"{fonemas.get(sedecuplos[i+6], '')}({sedecuplos[i+6]})-" \
                        f"{fonemas.get(sedecuplos[i+7], '')}({sedecuplos[i+7]})-" \
                        f"{fonemas.get(sedecuplos[i+8], '')}({sedecuplos[i+8]})-" \
                        f"{fonemas.get(sedecuplos[i+9], '')}({sedecuplos[i+9]})-" \
                        f"{fonemas.get(sedecuplos[i+10], '')}({sedecuplos[i+10]})-" \
                        f"{fonemas.get(sedecuplos[i+11], '')}({sedecuplos[i+11]})-" \
                        f"{fonemas.get(sedecuplos[i+12], '')}({sedecuplos[i+12]})-" \
                        f"{fonemas.get(sedecuplos[i+13], '')}({sedecuplos[i+13]})-" \
                        f"{fonemas.get(sedecuplos[i+14], '')}({sedecuplos[i+14]})-" \
                        f"{fonemas.get(sedecuplos[i+15], '')}({sedecuplos[i+15]})"
            if len(sedecuplo) > 31:
                contagem_sedecuplos[sedecuplo] = contagem_sedecuplos.get(sedecuplo, 0) + 1

# Ordena os sedecuplos pela quantidade de ocorrências
sedecuplos_ordenados = sorted(contagem_sedecuplos.items(), key=lambda x: x[1], reverse=True)

total_contagem = sum(contagem for sedecuplo, contagem in sedecuplos_ordenados)

print("\nContagens de sedecuplos de caracteres com mais do que uma ocorrência:")

# Imprime o resultado ordenado com a porcentagem relativa
nada = "não"  # Inicializa com "não" para indicar que nada foi encontrado

for sedecuplo, contagem in sedecuplos_ordenados:
    if contagem > 1 and len(sedecuplo) > 31:
        porcentagem = (contagem / total_contagem) * 100 if total_contagem != 0 else 0
        print(f"Sedecuplo: {sedecuplo}, Contagem: {contagem}, Porcentagem: {porcentagem:.2f}%")
    else:
        nada = "sim"

if nada == "sim":
    print("Não foi encontrada nenhuma sequência de caracteres da dimensão procurada!")
