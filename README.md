# Script de geração de relatorio da máquina

Este script é uma simples forma de gerar relátorios sobre informações da máquina em Linux, informações como CPU, GPU. Memoria Ram, Disco e etc.
Este script é uma amostra clara do poder/força imabtivel que o Linux tem/possui, nas mãos de um profissional que o domina, não existe dificuldade, existe prova de talento e dedicação.

## Funcionalidades & Atualizaçoes

- **Geração de relatórios**: gera relatórios detalhados de simples compreensão.
- **Execução Automática**: uma vez ativado, ele irá gera relatórios completo a cada 30 minutos, vocẽ pode mudar o tempo de execução caso queira.
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

## Melhorias

- Ao instalado, ganhe privilegio e execute de forma automática em Background.
- Implementar melhores práticas de desempenho. 
- Implementar mais informações no relatorio sem comprometer sua compreensão


## Autores

- [@Rodrigo_Kelven](https://github.com/Rodrigo-Kelven)
