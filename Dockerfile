# Usando uma imagem base com Ubuntu
FROM ubuntu:latest

# Definindo o diretório de trabalho dentro do container
WORKDIR /app

# Instalando dependências necessárias (gcc, g++, make)
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    make \
    && rm -rf /var/lib/apt/lists/*

# Copiando os arquivos do projeto para o diretório de trabalho no container
COPY . .

# Criando o diretório bin caso não exista e executando o make
RUN mkdir -p bin && make

# Comando para rodar o programa C ou C++ após a construção
# Você pode trocar para "cpp-hello" se preferir o C++
CMD ["./bin/cc-docker", ""]

