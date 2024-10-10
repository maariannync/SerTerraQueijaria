Create Database SerTerra
go

Use SerTerra
go

CREATE TABLE Cliente (
    IdCliente UNIQUEIDENTIFIER PRIMARY KEY,
    Nome VARCHAR(70) NOT NULL,
    Fone VARCHAR(15),
    Email VARCHAR(64),
    CPF VARCHAR(15) UNIQUE NOT NULL
)

CREATE TABLE Pedidos (
    IdPedido UNIQUEIDENTIFIER PRIMARY KEY,
    DataHora DATETIME NOT NULL DEFAULT GETDATE(),
    IdCliente UNIQUEIDENTIFIER NOT NULL,
    ValorDesconto DECIMAL(10, 2),
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
)

CREATE TABLE TiposProduto (
    IdTipoProduto UNIQUEIDENTIFIER PRIMARY KEY,
    TipoProduto VARCHAR(20) NOT NULL
)

CREATE TABLE Produtos (
    IdProduto UNIQUEIDENTIFIER PRIMARY KEY,
    Produto VARCHAR(70) NOT NULL,
    Descricao VARCHAR(300),
    PrecoUnitario DECIMAL(10, 2) NOT NULL,
    QtdEstoque INT NOT NULL,
    IdTipoProduto UNIQUEIDENTIFIER NOT NULL,
    FOREIGN KEY (IdTipoProduto) REFERENCES TiposProduto(IdTipoProduto)
)

CREATE TABLE ItensPedido (
    IdItemPedido UNIQUEIDENTIFIER PRIMARY KEY,
    IdPedido UNIQUEIDENTIFIER NOT NULL,
    IdProduto UNIQUEIDENTIFIER NOT NULL,
    Quantidade INT NOT NULL,
    ValorUnitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (IdPedido) REFERENCES Pedidos(IdPedido),
    FOREIGN KEY (IdProduto) REFERENCES Produtos(IdProduto)
)