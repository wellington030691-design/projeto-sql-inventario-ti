-- Criação da Tabela de Equipamentos
CREATE TABLE Equipamentos (
    id_equipamento INT PRIMARY KEY,
    tipo VARCHAR(50), -- Notebook, Desktop, Monitor
    marca VARCHAR(50),
    modelo VARCHAR(50),
    numero_serie VARCHAR(100) UNIQUE,
    data_compra DATE,
    status VARCHAR(20) -- Ativo, Manutenção, Descartado
);

-- Criação da Tabela de Funcionários
CREATE TABLE Funcionarios (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(50),
    cargo VARCHAR(50)
);

-- Tabela de Atribuição (Quem está com qual equipamento)
CREATE TABLE Atribuicoes (
    id_atribuicao INT PRIMARY KEY,
    id_equipamento INT,
    id_funcionario INT,
    data_entrega DATE,
    FOREIGN KEY (id_equipamento) REFERENCES Equipamentos(id_equipamento),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);

-- Exemplo de uma consulta (Query) para o relatório:
-- Esta consulta mostra qual funcionário está com qual equipamento
SELECT 
    Funcionarios.nome AS Nome_Funcionario,
    Equipamentos.tipo AS Equipamento,
    Equipamentos.modelo AS Modelo,
    Atribuicoes.data_entrega
FROM Atribuicoes
JOIN Funcionarios ON Atribuicoes.id_funcionario = Funcionarios.id_funcionario
JOIN Equipamentos ON Atribuicoes.id_equipamento = Equipamentos.id_equipamento;
