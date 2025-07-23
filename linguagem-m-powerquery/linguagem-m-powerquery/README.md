# Linguagem M (Power Query) - Estudos e Exemplos

Este repositório contém exemplos práticos, dicas, funções e conceitos sobre a **Linguagem M**, utilizada no **Power Query** (Power BI, Excel e outras ferramentas Microsoft).

---

## 📌 Sobre a Linguagem M

- Linguagem funcional e case-sensitive
- Usada para **ETL (Extract, Transform, Load)**
- Permite a automação de transformações de dados
- Utilizada no Power BI, Excel, Dataflows e mais

---

## 🧪 Exemplos de Código

### 📂 Básico

```m
let
    Fonte = Excel.Workbook(File.Contents("C:\dados.xlsx"), null, true),
    Tabela = Fonte{[Item="Planilha1",Kind="Sheet"]}[Data],
    Cabecalhos = Table.PromoteHeaders(Tabela)
in
    Cabecalhos
```

### 🔍 Filtros

```m
Table.SelectRows(Dados, each [Ano] = 2023)
```

### ➕ Nova Coluna

```m
Table.AddColumn(Dados, "AnoTexto", each Text.From([Ano]))
```

---

## 🔧 Funções Úteis

| Categoria   | Função                 | Descrição                           |
|------------|------------------------|-------------------------------------|
| Texto      | `Text.Upper`, `Text.Lower` | Manipulação de texto               |
| Data       | `Date.Year`, `Date.Month`  | Extração de partes da data         |
| Lista      | `List.Sum`, `List.Max`     | Operações com listas               |
| Tabela     | `Table.SelectRows`         | Filtros de tabela                  |
| Registro   | `Record.Field`             | Acesso a campos de registros       |

---

## 📘 Estrutura da Linguagem M

```m
let
    NomeEtapa1 = ...,
    NomeEtapa2 = ...,
    NomeEtapaFinal = ...
in
    NomeEtapaFinal
```

---

## 🧠 Objetivo

Este repositório tem como objetivo:
- Servir como material de apoio para estudos
- Facilitar a reutilização de trechos M
- Ser uma base de consulta rápida

---

## 📎 Recursos Externos

- [Documentação Oficial Microsoft](https://learn.microsoft.com/pt-br/powerquery-m/)
- [Guia de Linguagem M (Power BI Tips)](https://powerbi.tips/)

---

## 🚀 Contribuições

Sinta-se à vontade para abrir issues ou pull requests com melhorias, exemplos e correções.

---

## 🧑‍💻 Autor

**Rafael Silva**  
[LinkedIn](https://www.linkedin.com/) | [GitHub](https://github.com/)
