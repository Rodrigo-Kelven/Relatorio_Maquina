#!/bin/bash

# Script para gerar relatório de uso da máquina a cada 30 minutos

# Arquivo de log
LOG_FILE="$HOME/relatorio_uso_maquina.log"

# Função para coletar informações da máquina
coletar_informacoes() {
    echo "-----------------------------" >> "$LOG_FILE"
    echo "Relatório de Uso da Máquina" >> "$LOG_FILE"
    echo "Data e Hora: $(date)" >> "$LOG_FILE"
    echo "-----------------------------" >> "$LOG_FILE"

    # Informações de CPU
    echo "Informações da CPU:" >> "$LOG_FILE"
    lscpu | grep -E 'Model name|Socket|Core|Thread' >> "$LOG_FILE"
    
    # Informações de Memória
    echo "Informações da Memória:" >> "$LOG_FILE"
    free -h >> "$LOG_FILE"
    
    # Informações de Disco
    echo "Informações dos Discos:" >> "$LOG_FILE"
    df -h >> "$LOG_FILE"
    
    # Informações de GPU (se disponível)
    if command -v lspci &> /dev/null; then
        echo "Informações da GPU:" >> "$LOG_FILE"
        lspci | grep -i vga >> "$LOG_FILE"
    else
        echo "Comando lspci não encontrado." >> "$LOG_FILE"
    fi
    
    # Informações de Pacotes de Internet
    echo "Informações de Pacotes de Internet:" >> "$LOG_FILE"
    ifconfig | grep 'inet ' | awk '{print $2}' >> "$LOG_FILE"
    
    # Informações de Hardware
    echo "Informações do Hardware:" >> "$LOG_FILE"
    inxi -Fxz >> "$LOG_FILE" || echo "inxi não está instalado. Instale-o para obter informações detalhadas." >> "$LOG_FILE"
    
    # Informações de Processos
    echo "Uso de Processos:" >> "$LOG_FILE"
    ps aux --sort=-%mem | head -n 10 >> "$LOG_FILE"  # Top 10 processos por uso de memória
    
    # Informações de Temperatura da CPU (se disponível)
    if command -v sensors &> /dev/null; then
        echo "Temperatura da CPU:" >> "$LOG_FILE"
        sensors >> "$LOG_FILE"
    else
        echo "Comando sensors não encontrado." >> "$LOG_FILE"
    fi

    echo "-----------------------------" >> "$LOG_FILE"
}

# Loop para coletar informações a cada 30 minutos
while true; do
    coletar_informacoes
    sleep 1800  # Espera 30 minutos (1800 segundos)
done
