CREATE TABLE produto_categoria (
    id_categoria NUMBER(11) NOT NULL,
    descricao VARCHAR2(100) NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE produto (
    id_produto NUMBER(11) NOT NULL,
    id_categoria NUMBER(11) NOT NULL,
    descricao VARCHAR2(100) NOT NULL,
    valor_compra NUMBER(11) NOT NULL,
    percentual_lucro NUMBER(11) NOT NULL,
    PRIMARY KEY (id_produto),
    CONSTRAINT FK_id_categoria FOREIGN KEY (id_categoria)
    REFERENCES produto_categoria(id_categoria)
);
