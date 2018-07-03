SELECT
  TAB_SUPER.NOME   "Superm. (Nome)",
  TAB_SUPER.UNID   "Unidade",
  TAB_SUPER.PK_SUPER "ID",
  TAB_VENDAS.TIPO_CARTAO "Tipo cartão mais rentável",
  TAB_CUSTO.CUSTO_TOTAL "Custo atual c/ mercadoria(R$)",
  TAB_FUNC.NUM_FUNC "Núm. func.",
  TAB_CONTATO.CONTATO "Contato",
  TAB_FORN.NUM_FORN "Núm. forn.",
  TAB_LOTE.PROD_TIPO "Categoria c/ mais lotes",
  TAB_GEN.GENERO "Gênero que mais consumiu"

FROM
  --Tabelas envolvidas abaixo: juridica, pessoa, supermercado;
  (SELECT
     P.nome nome, S.unidade unid, S.fk_pessoa_juridica pk_super
   FROM supermercado S
     INNER JOIN juridica J ON S.fk_pessoa_juridica = J.fk_pessoa
     INNER JOIN pessoa P ON J.fk_pessoa = P.id
  ) TAB_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: cartao, compra, hist_compra, supermercado;
  (SELECT
     DISTINCT ON(S.fk_pessoa_juridica) S.fk_pessoa_juridica pk_super,
     ROUND(SUM(C.preco_compra) :: NUMERIC, 2) total,
     C2.tipo tipo_cartao
   FROM supermercado S
     INNER JOIN hist_compra H ON S.fk_pessoa_juridica = H.fk_supermercado
     INNER JOIN compra C ON H.id = C.fk_hist_compra
     INNER JOIN cartao C2 ON H.fk_cartao = C2.id
   GROUP BY TIPO_CARTAO, PK_SUPER ORDER BY 1,2 DESC
  ) TAB_VENDAS
    ON TAB_SUPER.PK_SUPER = TAB_VENDAS.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: produto, supermercado;
  (SELECT
     S.fk_pessoa_juridica pk_super,
     ROUND(sum(P.estoque * P.custo + P.quant_prateleira * P.custo) :: NUMERIC, 2) custo_total
   FROM produto P
     INNER JOIN supermercado S ON P.fk_supermercado = S.fk_pessoa_juridica
   GROUP BY PK_SUPER
  ) TAB_CUSTO
    ON TAB_VENDAS.PK_SUPER = TAB_CUSTO.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: funcionario, supermercado;
  (SELECT
     S.fk_pessoa_juridica pk_super,
     SUM(CASE WHEN F.cargo NOTNULL THEN 1 ELSE 0 END) num_func
   FROM supermercado S
     LEFT JOIN funcionario F ON S.fk_pessoa_juridica = F.fk_supermercado
   GROUP BY PK_SUPER
  ) TAB_FUNC
    ON TAB_CUSTO.PK_SUPER = TAB_FUNC.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: contato, supermercado;
  (SELECT
     DISTINCT ON (S.fk_pessoa_juridica) S.fk_pessoa_juridica pk_super,
                                        C.descricao contato
   FROM supermercado S
     INNER JOIN contato C ON S.fk_pessoa_juridica = C.fk_pessoa
   ORDER BY pk_super
  ) TAB_CONTATO
    ON TAB_SUPER.PK_SUPER = TAB_CONTATO.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: fornecimento, supermercado;
  (SELECT
     F.fk_supermercado pk_super,
     COUNT(F.fk_fornecedor) num_forn
   FROM supermercado S
     INNER JOIN fornecimento F ON F.fk_supermercado = S.fk_pessoa_juridica
   GROUP BY PK_SUPER
  ) TAB_FORN
    ON TAB_SUPER.PK_SUPER = TAB_FORN.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: lote, produto, supermercado;
  (SELECT
     DISTINCT ON (S.fk_pessoa_juridica)
     S.fk_pessoa_juridica pk_super,
     P.tipo prod_tipo,
     COUNT(P.id) num_lotes
   FROM supermercado S
     INNER JOIN lote L ON S.fk_pessoa_juridica = L.fk_supermercado
     INNER JOIN produto P ON L.fk_produto = P.id
   GROUP BY PK_SUPER, PROD_TIPO
   ORDER BY 1, 3 DESC
  ) TAB_LOTE
    ON TAB_SUPER.PK_SUPER = TAB_LOTE.PK_SUPER

  INNER JOIN
  --Tabelas envolvidas abaixo: compra, fisica, hist_compra, supermercado;
  (SELECT
     DISTINCT ON(S.fk_pessoa_juridica) S.fk_pessoa_juridica pk_super,
     F.genero genero,
     ROUND(SUM(C.preco_compra)::NUMERIC, 2) gasto_total
   FROM supermercado S
     INNER JOIN hist_compra H ON S.fk_pessoa_juridica = H.fk_supermercado
     INNER JOIN compra C ON H.id = C.fk_hist_compra
     INNER JOIN fisica F ON H.fk_cliente = F.fk_pessoa
   GROUP BY PK_SUPER, GENERO
   ORDER BY 1, 3 DESC
  ) TAB_GEN
    ON TAB_SUPER.PK_SUPER = TAB_GEN.PK_SUPER

ORDER BY 1 ASC;