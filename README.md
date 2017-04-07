# Desafio Pet Shop

Temos uma Pet Shop especializada em cachorros e queremos uma listagem simples, mas com filtro básicos, dos animais (cachorros) que já passaram pela Pet Shop.

> Cada animal tem uma raça (você pode obter a listagem de raças em http://www.portalfilhotes.com.br/racas-de-a-z/), gênero (macho/fêmea), castrado (sim/não), data de nascimento, nome, nome do dono, telefone do dono e data da última vez que passou pela Pet Shop.

Fique a vontade de colocar os filtros que você considerar necessários.

Para testar o software você precisa desenvolver também um **gerador de 1.000 cachorros aleatórios** para a Pet Shop.
Critérios
O que valorizamos:
* a qualidade interna: facilidade de entendimento do código
* qualidade externa: funcionamento e facilidade de uso
* uso de algum componente com os quais já trabalhamos (Angular, React, Bootstrap, SemanticUI)
* uso de testes automatizados (rspec, cucumber ou jasmine)

O seu código deve ser disponibilizado no Github, o readme deve informar como devemos fazer para rodar a aplicação localmente e para gerar os dados necessários.

# Setup - Docker

Na raiz do projeto, execute:

> docker-compose build

e depois

> docker-compose up

acesse a aplicação no navegador:

> http://localhost:4200

PS.: Tanto o diretório como o drive precisam estar compartilhados, para que seja possível montar o volume no container.

Informações de como configurar o Docker estão presentes na Wiki: https://github.com/filipegorges/petshop/wiki/Dicas-de-configura%C3%A7%C3%A3o-do-Docker

# Setup - Linux (Ubuntu):

Dependencias:

Backend:
> sudo apt-get update && apt-get install -y 
>   build-essential \
>   libpq-dev \
>   nodejs
Ruby 2.3.0 (https://rvm.io/rvm/install)

Frontend:
Na pasta do projeto:
>  npm install -g @angular/cli
>  npm install --save bootstrap

Para executar o projeto:

Backend: 
  Execute o serviço do PostgreSQL na porta 5432;
  Na pasta de arquivos do backend, em config/database.yml, altere o host default para o host de seu serviço PostgreSQL (local ou remoto);
  Certifique-se de que a porta 3001 está aberta em seu Firewall;
  Na pasta de arquivos do backend, execute:
  > bundle install
  > bash -c "rm -f tmp/pids/server.pid && bundle exec rails db:create && bundle exec rails db:migrate && bundle exec rails db:setup && bundle exec rails s -p 3001 -b '0.0.0.0'"
  
Frontend:
  Certifique-se de que a porta 4200 está aberta em seu Firewall;
  Na pasta de arquivos do frontend, execute:
  > npm install
  e depois
  > ng serve --host '0.0.0.0' --port 4200 --poll=2000
  
  Antigo repositório, movido devido a uma falha de configuração:
  https://github.com/filipegorges/pet-shop
  
  ## Itens que gostaria de ter acrescido no projeto:
  * Redis para fazer o cache de dados do backend
  * Ampliação da cobertura de testes
  * Integração TravisCI/Heroku
  * Integrar ng2-table no Angular 4 (https://github.com/valor-software/ng2-table) para mais filtros/sorting/paging
  * Automatizar a task de coleta de raças (breed_collector) via sidekiq
  * Integrar SemanticUI no frontend
  
