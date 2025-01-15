#!/bin/bash

# Passo 1: Construir Índice de Referência
echo "Construindo o índice de referência..."
bowtie-build reference.fasta reference_index

# Passo 2: Alinhar Sequências de Amostra
echo "Iniciando o alinhamento das sequências..."
bowtie -f -S -a -v 0 -p 3 -t reference_index sample.fasta > sample.sam 2> sample_bowtie.log

echo "Alinhamento concluído com sucesso."
