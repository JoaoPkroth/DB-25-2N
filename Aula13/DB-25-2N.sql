Create Table cliente(
	id_cliente int Primary Key,
	nome_cliente varchar(40) notnull,
	sobrenome_cliente varchar(80) notnull
);
create table produto (
	id_produto int primary key,
	nome_produto varchar(30) not null,
	descricao text null,
	preco numeric check (preco > 0) not null,
	qtde_estoque smallint default 0
);

create table pedido (
	id_pedido serial primary key,
	id_cliente int not null references cliente(id_cliente),
	id_produto int not null,
	qtde smallint not null,
	foreign key (id_produto) references produto(id_produto)
)