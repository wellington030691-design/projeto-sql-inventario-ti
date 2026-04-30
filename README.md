# Sistema de Inventário de Ativos de TI (SQL) 🖥️📑

Este projeto simula o banco de dados de um departamento de TI para controle de hardware e ativos da empresa. Ele resolve o problema de rastreabilidade de equipamentos, conectando cada máquina ao seu respectivo colaborador e setor.

### 🛠️ Estrutura do Banco de Dados
O script SQL cria um modelo relacional com três tabelas principais:
- **Equipamentos:** Armazena marca, modelo, número de série e status (Ativo, Manutenção, etc).
- **Funcionários:** Cadastro dos colaboradores por departamento.
- **Atribuições:** Tabela de relacionamento que registra qual funcionário está utilizando cada equipamento.

### 🔍 Funcionalidades
- Criação de tabelas com chaves primárias e estrangeiras.
- Garantia de integridade de dados (números de série únicos).
- Consulta (Query) pronta para gerar relatórios de inventário.

### 🚀 Tecnologias
- SQL (PostgreSQL / MySQL)
