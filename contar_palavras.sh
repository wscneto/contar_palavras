#!/bin/bash

# Verifica se o usuário passou o nome do arquivo
if [ $# -eq 0 ]; then
    echo "Uso: $0 arquivo.txt"
    exit 1
fi

arquivo=$1

# Verifica se o arquivo existe
if [ ! -f "$arquivo" ]; then
    echo "Erro: arquivo não encontrado."
    exit 1
fi

# Conta as palavras
quantidade=$(wc -w < "$arquivo")

echo "O texto possui $quantidade palavras."
