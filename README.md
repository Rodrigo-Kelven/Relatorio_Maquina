# Script de geração de relatorio da máquina
![Bash Script](https://img.shields.io/badge/bash_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) 

Este script é uma simples forma de gerar relátorios sobre informações da máquina em Linux, informações como CPU, GPU. Memoria Ram, Disco e etc.
Este script é uma amostra clara do poder/força imabtivel que o Linux tem/possui, nas mãos de um profissional que o domina, não existe dificuldade, existe prova de talento e dedicação.

## Funcionalidades & Atualizaçoes

- **Geração de relatórios**: As informações são registradas em um arquivo de log, evitando a abertura de múltiplas janelas de terminal. O relatório agora inclui informações sobre os 10 processos que mais consomem memória e a temperatura da CPU (se o comando sensors estiver disponível).
- **Execução em Background**: O script pode ser executado em segundo plano, permitindo que você continue usando o terminal para outras tarefas.
- **Configuração Simples**: Instalação e configuração automatizadas através de um script Bash.


## Instalação e Execução

## Clone o repositório

```bash
  git clone https://github.com/Rodrigo-Kelven/Relatorio_Maquina
```
    
## Entre no diretório do projeto e de a permissão

```bash
  cd Relatorio_Maquina
  chmod +x relatorio_maquina.sh
```

## Para iniciar o script da forma normal

```bash
  ./relatorio_maquina.sh
```

## Para iniciar o script em background

```bash
  nohup ./relatorio_maquina.sh &
```

## Verificar o Log: O relatório será salvo no arquivo relatorio_uso_maquina.log no diretório home do usuário. Você pode visualizar o log usando:

```bash
  cat ~/relatorio_maquina.log
```
# Contribuições

Contribuições são bem-vindas! Se você tiver sugestões ou melhorias, sinta-se à vontade para abrir um issue ou enviar um pull request.


## Autores

- [@Rodrigo_Kelven](https://github.com/Rodrigo-Kelven)
