let
    Fonte = Excel.Workbook(File.Contents("C:\dados.xlsx"), null, true),
    Tabela = Fonte{[Item="Planilha1",Kind="Sheet"]}[Data],
    Cabecalhos = Table.PromoteHeaders(Tabela)
in
    Cabecalhos