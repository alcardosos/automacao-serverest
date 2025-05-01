**Automação Plataforma ServeRest**

![Web Icon](https://img.shields.io/badge/Web-Site-blue?style=flat&logo=internet-explorer&logoColor=white)

https://front.serverest.dev/login

<br>
✏️ Sobre

Este projeto é um conjunto de testes automatizados desenvolvidos para a plataforma Serverest. Foi criado com o objetivo de fazer parte do portfólio pessoal, além de ser utilizado como uma prática de desenvolvimento e aprimoramento de habilidades na ferramenta Robot Framework.

<br>
🚀 Tecnologias


Robot Framework: Ferramenta de automação de testes que possui uma sintaxe simples e é ideal para testes de aceitação e automação de testes de aceitação dirigido por comportamento (BDD).

<br>
📁 Estrutura do Projeto

A estrutura do projeto está organizada da seguinte forma:


Copy Code
/Projeto
│
├── /tests        # Contém os casos de teste automatizados
│
├── /keywords     # Palavras-chave reutilizáveis para os casos de teste
│
├── /resources    # Recursos e variáveis utilizados nos testes
│
└── README.md     # Este arquivo

<br>
⚙️ Pré-requisitos


Python instalado em sua máquina.

Instalação do Robot Framework (pode ser feita via pip com o comando pip install robotframework).

<br>
📦 Como executar os testes


Clone o repositório para sua máquina local.

Navegue até o diretório do projeto.

Execute os testes com o comando robot -d ./results tests/, onde ./results é a pasta onde os resultados dos testes serão armazenados.

<br>
📈 Relatórios

É possível visualizar os relatórios de execução dos testes através dos arquivos: log.html, output.xml e report.html, gerados após a execução de alguma suite de teste.
Também são geradas evidências via captura de tela ao final de cada caso de teste executados, sendo armazenadas na pasta "Screenshots" do projeto.

<br>
👥 Desenvolvido por:

Alan Cardoso de Almeida
