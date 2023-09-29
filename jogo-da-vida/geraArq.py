# Tamanho da matriz quadrada
tamanho_matriz = 90

# Gere a matriz com pontos e hashtags
matriz = [['.' if (i + j) % 2 == 0 else '#' for i in range(tamanho_matriz)] for j in range(tamanho_matriz)]

# Salve a matriz em um arquivo de texto
with open('jogo-da-vida/matriz2.txt', 'w') as arquivo:
    for linha in matriz:
        arquivo.write(''.join(linha) + '\n')