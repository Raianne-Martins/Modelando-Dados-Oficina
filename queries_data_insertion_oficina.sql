USE Oficina;

INSERT INTO Cliente (idCliente, Fname, Minit, Lname, Endereco, TelefoneCelular, CPF, CNPJ) VALUES
(1, 'Carlos', 'A', 'Silva', 'Rua A, 123', '11987654321', '12345678901', NULL),
(2, 'Ana', 'B', 'Souza', 'Rua B, 234', '11987654322', '22345678902', NULL),
(3, 'José', 'C', 'Oliveira', 'Rua C, 345', '11987654323', '32345678903', NULL),
(4, 'Maria', 'D', 'Santos', 'Rua D, 456', '11987654324', NULL, '12345678000199'),
(5, 'Paulo', 'E', 'Lima', 'Rua E, 567', '11987654325', '52345678905', NULL),
(6, 'Lucas', 'F', 'Pereira', 'Rua F, 678', '11987654326', '62345678906', NULL),
(7, 'Juliana', 'G', 'Carvalho', 'Rua G, 789', '11987654327', '72345678907', NULL),
(8, 'Fernanda', 'H', 'Martins', 'Rua H, 890', '11987654328', '82345678908', NULL),
(9, 'Rafael', 'I', 'Costa', 'Rua I, 901', '11987654329', '92345678909', NULL),
(10, 'Patrícia', 'J', 'Ribeiro', 'Rua J, 012', '11987654330', '02345678910', NULL);

INSERT INTO Veiculo (idVeiculo, Cliente_idCliente, Placa, Modelo, Ano, Fabricante, Combustivel) VALUES
(1, 1, 'ABC1234', 'Civic', 2020, 'Honda', 'Gasolina'),
(2, 2, 'DEF5678', 'Corolla', 2019, 'Toyota', 'Gasolina'),
(3, 3, 'GHI9012', 'Onix', 2018, 'Chevrolet', 'Gasolina'),
(4, 4, 'JKL3456', 'HB20', 2021, 'Hyundai', 'Gasolina'),
(5, 5, 'MNO7890', 'Kwid', 2020, 'Renault', 'Gasolina'),
(6, 6, 'PQR2345', 'Argo', 2021, 'Fiat', 'Gasolina'),
(7, 7, 'STU6789', 'Compass', 2022, 'Jeep', 'Diesel'),
(8, 8, 'VWX0123', 'EcoSport', 2019, 'Ford', 'Gasolina'),
(9, 9, 'YZA4567', 'Spin', 2018, 'Chevrolet', 'Gasolina'),
(10, 10, 'BCD8901', 'Tucson', 2021, 'Hyundai', 'Gasolina');


INSERT INTO OrdemDeServico (idOrdemServico, Veiculo_idVeiculo, Veiculo_Cliente_idCliente, DataEmissao, ValorTotal, Status, DataConclusao) VALUES
(1, 1, 1, '2025-01-01', 1500.00, 'Concluído', '2025-01-10'),
(2, 2, 2, '2025-01-05', 2000.00, 'Em Andamento', NULL),
(3, 3, 3, '2025-01-10', 1800.00, 'Esperando peças', NULL),
(4, 4, 4, '2025-01-15', 2200.00, 'Concluído', '2025-01-20'),
(5, 5, 5, '2025-01-20', 1600.00, 'Em Andamento', NULL),
(6, 6, 6, '2025-01-25', 1700.00, 'Esperando peças', NULL),
(7, 7, 7, '2025-01-30', 1900.00, 'Concluído', '2025-02-05'),
(8, 8, 8, '2025-02-01', 1400.00, 'Em Andamento', NULL),
(9, 9, 9, '2025-02-05', 2100.00, 'Esperando peças', NULL),
(10, 10, 10, '2025-02-10', 2300.00, 'Concluído', '2025-02-15');

INSERT INTO FormaDePagamento (id_FormadePagamento, FormaDePagamento, Cliente_idCliente, OrdemServico_idOrdemServico, OrdemServico_Veiculo_idVeiculo, OrdemServico_Veiculo_Cliente_idCliente) VALUES
(1, 'Dinheiro', 1, 1, 1, 1),
(2, 'Cartão de Débito', 2, 2, 2, 2),
(3, 'Pix', 3, 3, 3, 3),
(4, 'Dinheiro', 4, 4, 4, 4),
(5, 'Cartão de Crédito', 5, 5, 5, 5),
(6, 'Pix', 6, 6, 6, 6),
(7, 'Dinheiro', 7, 7, 7, 7),
(8, 'Cartão de Crédito', 8, 8, 8, 8),
(9, 'Pix', 9, 9, 9, 9),
(10, 'Dinheiro', 10, 10, 10, 10);


INSERT INTO Peça (idPeça, Nome, Valor) VALUES
(1, 'Filtro de Ar', 100.00),
(2, 'Pneu', 400.00),
(3, 'Óleo de Motor', 50.00),
(4, 'Pastilha de Freio', 120.00),
(5, 'Bateria', 300.00),
(6, 'Velas de Ignição', 80.00),
(7, 'Correia Dentada', 150.00),
(8, 'Amortecedor', 200.00),
(9, 'Radiador', 250.00),
(10, 'Cabo de Vela', 90.00);

INSERT INTO Serviço (idServiço, Descricao, Custo) VALUES
(1, 'Troca de Óleo', 100.00),
(2, 'Alinhamento', 150.00),
(3, 'Balanceamento', 120.00),
(4, 'Revisão Completa', 200.00),
(5, 'Troca de Filtros', 180.00),
(6, 'Troca de Pastilhas', 160.00),
(7, 'Troca de Amortecedores', 250.00),
(8, 'Troca de Correia Dentada', 300.00),
(9, 'Reparação de Freios', 140.00),
(10, 'Limpeza de Bicos', 90.00);


INSERT INTO OrcamentoMateriais (Serviço_idServiço, Peça_idPeça, Quantidade, ValorUnitario, ValorTotal) VALUES
(1, 1, 2, 100.00, 200.00),
(2, 2, 4, 400.00, 1600.00),
(3, 3, 6, 50.00, 300.00),
(4, 4, 8, 120.00, 960.00),
(5, 5, 1, 300.00, 300.00),
(6, 6, 2, 80.00, 160.00),
(7, 7, 3, 150.00, 450.00),
(8, 8, 4, 200.00, 800.00),
(9, 9, 5, 250.00, 1250.00),
(10, 10, 1, 90.00, 90.00);

INSERT INTO OrcamentoMaoDeObra (Serviço_idServiço, OrdemServico_idOrdemServico, QuantidadeHoras, ValorMaoDeObra) VALUES
(1, 1, 3, 100.00),
(2, 2, 4, 150.00),
(3, 3, 2, 120.00),
(4, 4, 5, 200.00),
(5, 5, 3, 180.00),
(6, 6, 4, 160.00),
(7, 7, 2, 140.00),
(8, 8, 3, 130.00),
(9, 9, 5, 170.00),
(10, 10, 4, 110.00);

INSERT INTO Mecanico (idMecanico, Fname, Minit, Lname) VALUES
(1, 'Pedro', 'A', 'Lima'),
(2, 'João', 'B', 'Ferreira'),
(3, 'Carlos', 'C', 'Mendes'),
(4, 'Lucas', 'D', 'Santos'),
(5, 'Felipe', 'E', 'Costa'),
(6, 'Ricardo', 'F', 'Almeida'),
(7, 'Gustavo', 'G', 'Pereira'),
(8, 'André', 'H', 'Souza'),
(9, 'Rafael', 'I', 'Martins'),
(10, 'Fernando', 'J', 'Barros');

INSERT INTO Equipe (id_Equipe, OrdemServico_idOrdemServico, Mecanico_idMecanico, Funcao, DataInicio, DataConclusao) VALUES
(1, 1, 1, 'Chefe', '2025-01-01', '2025-01-10'),
(2, 1, 2, 'Assistente', '2025-01-01', '2025-01-10'),
(3, 2, 2, 'Chefe', '2025-01-05', NULL),
(4, 2, 3, 'Assistente', '2025-01-05', NULL),
(5, 3, 3, 'Chefe', '2025-01-10', NULL),
(6, 3, 4, 'Aprendiz', '2025-01-10', NULL),
(7, 4, 4, 'Chefe', '2025-01-15', '2025-01-20'),
(8, 4, 5, 'Assistente', '2025-01-15', '2025-01-20'),
(9, 5, 5, 'Chefe', '2025-01-20', NULL),
(10, 5, 6, 'Assistente', '2025-01-20', NULL),
(11, 6, 6, 'Chefe', '2025-01-25', NULL),
(12, 6, 7, 'Aprendiz', '2025-01-25', NULL),
(13, 7, 7, 'Chefe', '2025-01-30', '2025-02-05'),
(14, 7, 8, 'Assistente', '2025-01-30', '2025-02-05'),
(15, 8, 8, 'Chefe', '2025-02-01', NULL),
(16, 8, 9, 'Assistente', '2025-02-01', NULL),
(17, 9, 9, 'Chefe', '2025-02-05', NULL),
(18, 9, 10, 'Aprendiz', '2025-02-05', NULL),
(19, 10, 10, 'Chefe', '2025-02-10', '2025-02-15'),
(20, 10, 1, 'Assistente', '2025-02-10', '2025-02-15');

-- Query 1 - Ver quadro de mecânicos

SELECT * FROM Mecanico;

-- Query 2 - Achar um fabricante de veiculo

SELECT * FROM Veiculo
WHERE Fabricante = 'Honda';

-- Query 3 - Listar os veiculos em ordem pela placa;

SELECT Placa, Fabricante, Modelo, Ano
FROM Veiculo
ORDER BY Placa;

-- Query 4 - Calcular o custo de mão de obra + materiais para cada ordem de serviço

SELECT 
    os.idOrdemServico,
    os.ValorTotal + SUM(omd.ValorMaoDeObra + om.ValorUnitario * om.Quantidade) AS CustoTotal
FROM 
    OrdemDeServico os
JOIN 
    OrcamentoMaoDeObra omd ON os.idOrdemServico = omd.OrdemServico_idOrdemServico
JOIN 
    OrcamentoMateriais om ON os.idOrdemServico = om.Serviço_idServiço
GROUP BY 
    os.idOrdemServico;

-- Query 5 - Encontrar os serviços que tiveram mais de 2 horas de mão de obra

SELECT 
    Serviço_idServiço,
    SUM(QuantidadeHoras) AS TotalHoras
FROM 
    OrcamentoMaoDeObra
GROUP BY 
    Serviço_idServiço
HAVING 
    SUM(QuantidadeHoras) > 2;

-- Query 6 - Listar os mecânicos que trabalharam em equipe

SELECT 
    s.Descricao AS Serviço,
    m.Fname AS NomeMecanico,
    e.Funcao,
    e.DataInicio,
    e.DataConclusao
FROM 
    Serviço s
JOIN 
    OrcamentoMaoDeObra omo ON s.idServiço = omo.Serviço_idServiço
JOIN 
    Equipe e ON omo.OrdemServico_idOrdemServico = e.OrdemServico_idOrdemServico
JOIN 
    Mecanico m ON e.Mecanico_idMecanico = m.idMecanico;

-- Query 7 - Serviços em andamento

SELECT 
    idOrdemServico,
    Veiculo_idVeiculo,
    Veiculo_Cliente_idCliente,
    DataEmissao,
    ValorTotal,
    Status,
    DataConclusao
FROM 
    OrdemDeServico
WHERE 
    Status = 'Em Andamento';
