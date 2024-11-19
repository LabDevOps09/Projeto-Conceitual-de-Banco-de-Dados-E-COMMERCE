# Ecommerce-Model

Este projeto contém o modelo conceitual de um banco de dados para um sistema de E-commerce.

## Modelo Conceitual

O modelo conceitual descreve as entidades principais e os relacionamentos no sistema:

- **Cliente**: Representa os clientes do e-commerce, podendo ser Pessoa Física ou Jurídica.
- **Pagamento**: Relacionado ao pagamento efetuado pelos clientes.
- **Entrega**: Detalha as entregas realizadas para cada cliente.

## Como Rodar o Script

1. Clone este repositório.
2. Execute o script `script_modelo.sql` no seu banco de dados MySQL para criar as tabelas.


### Legenda do Diagrama

- **PK**: Chave primária
- **FK**: Chave estrangeira
- **1 — N**: Relacionamento um-para-muitos (um cliente pode ter múltiplos pagamentos ou entregas)
