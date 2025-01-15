#!/bin/bash

# 1. Avaliação de qualidade das leituras com FastQC
echo "Executando FastQC para avaliar a qualidade..."
fastqc Aul-15-01

# 2. Limpeza e corte de sequências de baixa qualidade com Trim Galore
echo "Executando Trim Galore para limpeza e corte de sequências..."
trim_galore --fastqc -q 25 --trim-n --max_n 0 -j 1 --length 18 --dont_gzip Aul-15-01
