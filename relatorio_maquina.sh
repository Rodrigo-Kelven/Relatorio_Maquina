#!/bin/bash

# Script para gerar relatório de uso da máquina a cada 30 minutos

# Função para coletar informações da máquina
coletar_informacoes() {
    echo "-----------------------------"
    echo "Relatório de Uso da Máquina"
    echo "Data e Hora: $(date)"
    echo "-----------------------------"

    # Informações de CPU
    echo "Informações da CPU:"
    lscpu | grep -E 'Model name|Socket|Core|Thread'
    
    # Informações de Memória
    echo "Informações da Memória:"
    free -h
    
    # Informações de Disco
    echo "Informações dos Discos:"
    df -h
    
    # Informações de GPU (se disponível)
    if command -v lspci &> /dev/null; then
        echo "Informações da GPU:"
        lspci | grep -i vga
    else
        echo "Comando lspci não encontrado."
    fi
    
    # Informações de Pacotes de Internet
    echo "Informações de Pacotes de Internet:"
    ifconfig | grep 'inet ' | awk '{print $2}'
    
    # Informações de Hardware
    echo "Informações do Hardware:"
    inxi -Fxz || echo "inxi não está instalado. Instale-o para obter informações detalhadas."
    
    echo "-----------------------------"
}

# Loop para coletar informações a cada 30 minutos
while true; do
    gnome-terminal -- bash -c "$(declare -f coletar_informacoes); coletar_informacoes; exec bash"
    sleep 1800  # Espera 30 minutos (1800 segundos)
done
