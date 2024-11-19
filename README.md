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

  # Desafio de Projeto: Sistema de Controle de Ordens de Serviço em Oficina Mecânica

## Objetivo
Criar um esquema conceitual para o gerenciamento de execução de ordens de serviço em uma oficina mecânica. O objetivo é organizar as informações relacionadas a clientes, veículos, equipes, mecânicos, ordens de serviço, serviços e peças.

---

## Entidades Identificadas
Com base na narrativa, as seguintes entidades foram criadas:

1. **Cliente**
   - **Descrição**: Representa os clientes que levam os veículos à oficina.
   - **Atributos**:
     - ID_cliente (PK)
     - Nome
     - Telefone
     - Endereço

2. **Veículo**
   - **Descrição**: Armazena informações dos veículos trazidos pelos clientes.
   - **Atributos**:
     - ID_veiculo (PK)
     - Placa
     - Modelo
     - Marca
     - Ano
     - ID_cliente (FK)

3. **Mecânico**
   - **Descrição**: Representa os mecânicos que trabalham na oficina.
   - **Atributos**:
     - ID_mecanico (PK)
     - Nome
     - Endereço
     - Especialidade

4. **Equipe**
   - **Descrição**: Representa as equipes de mecânicos designadas para os serviços.
   - **Atributos**:
     - ID_equipe (PK)
     - Nome_equipe

5. **Ordem de Serviço (OS)**
   - **Descrição**: Armazena os dados das ordens de serviço criadas para conserto ou revisão de veículos.
   - **Atributos**:
     - ID_OS (PK)
     - Número_OS
     - Data_emissao
     - Valor_total
     - Status
     - Data_conclusao
     - ID_veiculo (FK)

6. **Serviço**
   - **Descrição**: Lista os serviços disponíveis na oficina.
   - **Atributos**:
     - ID_servico (PK)
     - Nome_servico
     - Valor_mao_obra

7. **Peça**
   - **Descrição**: Armazena informações das peças utilizadas nos serviços.
   - **Atributos**:
     - ID_peca (PK)
     - Nome_peca
     - Valor_peca

---

## Relacionamentos

1. **Cliente - Veículo**:
   - Relacionamento **1:N** (Um cliente pode ter vários veículos).
   - Representação no diagrama: Linha entre as entidades com "1" próximo a Cliente e "N" próximo a Veículo.

2. **Veículo - Ordem de Serviço**:
   - Relacionamento **1:N** (Um veículo pode estar associado a várias OS).
   - Representação no diagrama: Linha entre Veículo e Ordem de Serviço.

3. **Ordem de Serviço - Serviço**:
   - Relacionamento **N:N** (Uma OS pode incluir vários serviços, e um serviço pode estar em várias OS).
   - Necessário criar uma tabela de ligação chamada `OS_Servico` com os atributos:
     - ID_OS (FK)
     - ID_servico (FK)
     - Quantidade.

4. **Ordem de Serviço - Peça**:
   - Relacionamento **N:N** (Uma OS pode incluir várias peças, e uma peça pode estar presente em várias OS).
   - Necessário criar uma tabela de ligação chamada `OS_Peca` com os atributos:
     - ID_OS (FK)
     - ID_peca (FK)
     - Quantidade.

5. **Equipe - Mecânico**:
   - Relacionamento **1:N** (Uma equipe pode ter vários mecânicos).
   - Representação no diagrama: Linha entre Equipe e Mecânico.

---

## Passo a Passo no Draw.io

1. **Criação das Entidades**:
   - Crie retângulos para cada entidade.
   - Liste os atributos dentro de cada retângulo.
   - Adicione as chaves primárias (PK) e chaves estrangeiras (FK) conforme necessário.

2. **Relacionamentos**:
   - Use linhas para conectar as entidades relacionadas.
   - Marque o tipo de relacionamento (1:N, N:N, etc.).
   - Para relacionamentos N:N, crie tabelas de ligação.

3. **Legendas**:
   - Inclua uma legenda para identificar:
     - PK: Chave primária
     - FK: Chave estrangeira
     - 1 — N: Relacionamento um-para-muitos
     - N — N: Relacionamento muitos-para-muitos

---

## Diagrama Final
O diagrama foi estruturado com todas as entidades, atributos e relacionamentos baseados na narrativa fornecida. 

---

## Conclusão
O modelo criado organiza eficientemente os dados necessários para o controle de ordens de serviço na oficina. A estrutura suporta consultas e atualizações como:
- Listar veículos de um cliente.
- Consultar ordens de serviço ativas.
- Determinar o custo total de uma OS (serviços + peças).
- Gerenciar equipes e mecânicos envolvidos.

Este modelo pode ser implementado diretamente em um banco de dados relacional como MySQL.

