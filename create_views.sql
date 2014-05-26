--CREATE VIEW VW_NOTAS2012_MUNICIPIO AS SELECT * FROM stats_notas2012 n INNER JOIN lm_municipio_2007 m ON CAST(m.geocodigo AS INTEGER) = n.cod_municipio_insc;
--CREATE VIEW VW_NOTAS2011_MUNICIPIO AS SELECT * FROM stats_notas2011 n INNER JOIN lm_municipio_2007 m ON CAST(m.geocodigo AS INTEGER) = n.cod_municipio_insc;
--CREATE VIEW VW_NOTAS2010_MUNICIPIO AS SELECT * FROM stats_notas2010 n INNER JOIN lm_municipio_2007 m ON CAST(m.geocodigo AS INTEGER) = n.cod_municipio_insc;

DROP VIEW IF EXISTS vw_notas2012_municipio;
CREATE OR REPLACE VIEW vw_notas2012_municipio AS 
SELECT
    m.uf, m.nm_nng, n.candidatos_count, n.notas_count,
    n.nu_nt_cn_avg,
    n.nu_nt_ch_avg,
    n.nu_nt_lc_avg,
    n.nu_nt_mt_avg,
    n.nu_nota_comp1_avg,
    n.nu_nota_comp2_avg,
    n.nu_nota_comp3_avg,
    n.nu_nota_comp4_avg,
    n.nu_nota_comp5_avg,
    n.nu_nota_redacao_avg,
    n.nu_nota_media_avg,
    m.geom
FROM
    stats_notas2012 n
    INNER JOIN lm_municipio_2007 m ON m.geocodigo::INTEGER = n.cod_municipio_insc;

DROP VIEW IF EXISTS vw_notas2011_municipio;
CREATE OR REPLACE VIEW vw_notas2011_municipio AS 
SELECT
    m.uf, m.nm_nng, n.candidatos_count, n.notas_count,
    n.nu_nt_cn_avg,
    n.nu_nt_ch_avg,
    n.nu_nt_lc_avg,
    n.nu_nt_mt_avg,
    n.nu_nota_comp1_avg,
    n.nu_nota_comp2_avg,
    n.nu_nota_comp3_avg,
    n.nu_nota_comp4_avg,
    n.nu_nota_comp5_avg,
    n.nu_nota_redacao_avg,
    n.nu_nota_media_avg,
    m.geom
FROM
    stats_notas2011 n
    INNER JOIN lm_municipio_2007 m ON m.geocodigo::INTEGER = n.cod_municipio_insc;

DROP VIEW IF EXISTS vw_notas2010_municipio;
CREATE OR REPLACE VIEW vw_notas2010_municipio AS 
SELECT
    m.uf, m.nm_nng, n.candidatos_count, n.notas_count,
    n.nu_nt_cn_avg,
    n.nu_nt_ch_avg,
    n.nu_nt_lc_avg,
    n.nu_nt_mt_avg,
    n.nu_nota_comp1_avg,
    n.nu_nota_comp2_avg,
    n.nu_nota_comp3_avg,
    n.nu_nota_comp4_avg,
    n.nu_nota_comp5_avg,
    n.nu_nota_redacao_avg,
    n.nu_nota_media_avg,
    m.geom
FROM
    stats_notas2010 n
    INNER JOIN lm_municipio_2007 m ON m.geocodigo::INTEGER = n.cod_municipio_insc;
