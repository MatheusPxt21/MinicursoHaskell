import random

# Tamanho da matriz quadrada
tamanho_matriz = 100

# Gere a matriz aleatória com pontos e hashtags
matriz = [['.' if random.random() < 0.9 else '#' for _ in range(tamanho_matriz)] for _ in range(tamanho_matriz)]

# Salve a matriz em um arquivo de texto
with open('jogo-da-vida/matriz_randomica2.txt', 'w') as arquivo:
    for linha in matriz:
        arquivo.write(''.join(linha) + '\n')