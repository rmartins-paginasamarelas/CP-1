# Define o nome do arquivo
nome_arquivo = "estelas.txt"

# Inicializa um dicionário para armazenar a contagem de decetos
contagem_decetos = {}

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

        # Divide a linha em decetos e conta as ocorrências
        decetos = linha_limpa.split('-')
        for i in range(len(decetos) - 9):
            # Constrói o deceto com números e valores fonéticos
            deceto = '-'.join(phonetic_mapping.get(dec, dec) for dec in decetos[i:i+10])

            if len(deceto) > 19:
                contagem_decetos[deceto] = contagem_decetos.get(deceto, 0) + 1

# Ordena os decetos pela quantidade de ocorrências
decetos_ordenados = sorted(contagem_decetos.items(), key=lambda x: x[1], reverse=True)

total_contagem = sum(contagem for deceto, contagem in decetos_ordenados)

print("\nContagens de decetos de caracteres com mais do que uma ocorrência:")

# Imprime o resultado ordenado com a porcentagem relativa
for deceto, contagem in decetos_ordenados:
    if contagem > 1 and len(deceto) > 19:
        porcentagem = (contagem / total_contagem) * 100 if total_contagem != 0 else 0
        print(f"Deceto: {deceto}, Contagem: {contagem}, Porcentagem: {porcentagem:.2f}%")
