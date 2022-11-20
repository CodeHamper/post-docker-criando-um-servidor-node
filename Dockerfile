FROM node:16

## Define o local onde o app vai ficar no disco do container
## Pode ser o diretório que você quiser
WORKDIR /usr/app

## Copia tudo que começa com package e termina com .json para dentro da pasta /usr/app
COPY package*.json ./

## Executa npm install para adicionar as dependências e criar a pasta node_modules
RUN npm install

## Copia tudo que está no diretório onde o arquivo Dockerfile está 
## para dentro da pasta /usr/app do container
## ignorar a node_modules
COPY . .

## Container ficará ouvindo os acessos na porta 3000
EXPOSE 3000

## Executa o comando npm start para iniciar o script que que está no package.json
CMD npm start