# Script de geração de relatorio da máquina

Este script é uma simples forma de gerar relátorios sobre informações da máquina em Linux, informações como CPU, GPU. Memoria Ram, Disco e etc.
Este script é uma amostra clara do poder/força imabtivel que o Linux tem/possui, nas mãos de um profissional que o domina, não existe dificuldade, existe prova de talento e dedicação.

## Funcionalidades

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

## Inicie o script

```bash
  ./relatorio_maquina.sh
```


# Acessando o Servidor FTP

### O script solicitará que você insira um nome de usuário e uma senha para o servidor FTP.

Após a execução do script, você pode acessar o servidor FTP usando um cliente FTP, como o FileZilla.
Configurações do Cliente FTP

    Host: localhost
    Usuário: O nome de usuário que você forneceu.
    Senha: A senha que você forneceu.

## Estrutura de Diretórios

    ~/ftp: Diretório onde os arquivos do servidor FTP são armazenados.
    ~/backup/ftp: Diretório onde os arquivos enviados para o servidor são copiados como backup.

## Backup

Os arquivos enviados para o servidor FTP são automaticamente copiados para o diretório de backup especificado. Você pode acessar os arquivos de backup em ~/backup/ftp.
Parando o Servidor FTP

## Para parar o servidor FTP, você pode usar o seguinte comando:
```bash
  docker stop ftp_server
```

## Parando e Removendo o Container

Se você quiser remover o container após parar, use:
```bash
  docker stop -t 0 ftp_server && docker rm -f <id_do_container>
```

# Contribuições

Contribuições são bem-vindas! Se você tiver sugestões ou melhorias, sinta-se à vontade para abrir um issue ou enviar um pull request.

## Melhorias

- Ao instalado, ganhe privilegio e execute de forma automática em Background.
- Implementar melhores práticas de desempenho. 
- Implementar mais informações no relatorio sem comprometer sua compreensão


## Autores

- [@Rodrigo_Kelven](https://github.com/Rodrigo-Kelven)
