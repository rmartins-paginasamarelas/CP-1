# Define o nome do arquivo
nome_arquivo = "estelas.txt"

# Inicializa um dicionário para armazenar a contagem de nonetos
contagem_nonetos = {}

# Create a dictionary to store character numbers and their corresponding phonetic values
phonetic_mapping = {}
with open("tabelacaracteresfonemas.txt", 'r', encoding='utf-8') as fonemas:
    for line in fonemas:
        parts = line.strip().split(':')
        if len(parts) == 2:
            character_number = parts[0].strip()
            phonetic_value = parts[1].strip()
            phonetic_mapping[character_number] = f"{character_number}({phonetic_value})"

# Lê o arquivo e processa cada linha
with open(nome_arquivo, 'r') as arquivo:
    for linha in arquivo:
        # Remove caracteres de quebra de linha
        linha_limpa = linha.strip()

        # Divide a linha em nonetos e conta as ocorrências
        nonetos = linha_limpa.split('-')
        for i in range(len(nonetos) - 8):
            # Constrói o noneto com números e valores fonéticos
            noneto = '-'.join(phonetic_mapping.get(nono, nono) for nono in nonetos[i:i+9])

            if len(noneto) > 17:
                contagem_nonetos[noneto] = contagem_nonetos.get(noneto, 0) + 1

# Ordena os nonetos pela quantidade de ocorrências
nonetos_ordenados = sorted(contagem_nonetos.items(), key=lambda x: x[1], reverse=True)

total_contagem = sum(contagem for noneto, contagem in nonetos_ordenados)

print("\nContagens de nonetos de caracteres com mais do que uma ocorrência:")

# Imprime o resultado ordenado com a porcentagem relativa
for noneto, contagem in nonetos_ordenados:
    if contagem > 1 and len(noneto) > 17:
        porcentagem = (contagem / total_contagem) * 100 if total_contagem != 0 else 0
        print(f"Noneto: {noneto}, Contagem: {contagem}, Porcentagem: {porcentagem:.2f}%")
