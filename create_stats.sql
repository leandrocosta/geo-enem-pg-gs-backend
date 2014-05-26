DROP TABLE IF EXISTS stats_notas2012;
CREATE TABLE stats_notas2012 AS
SELECT
    cod_municipio_insc, COUNT(1) candidatos_count,
    COUNT(nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_comp1+nu_nota_comp2+nu_nota_comp3+nu_nota_comp4+nu_nota_comp5+nu_nota_redacao) notas_count,

    MIN(nu_nt_cn) nu_nt_cn_min, MAX(nu_nt_cn) nu_nt_cn_max, AVG(nu_nt_cn) nu_nt_cn_avg,
    MIN(nu_nt_ch) nu_nt_ch_min, MAX(nu_nt_ch) nu_nt_ch_max, AVG(nu_nt_ch) nu_nt_ch_avg,
    MIN(nu_nt_lc) nu_nt_lc_min, MAX(nu_nt_lc) nu_nt_lc_max, AVG(nu_nt_lc) nu_nt_lc_avg,
    MIN(nu_nt_mt) nu_nt_mt_min, MAX(nu_nt_mt) nu_nt_mt_max, AVG(nu_nt_mt) nu_nt_mt_avg,

    MIN(nu_nota_comp1) nu_nota_comp1_min, MAX(nu_nota_comp1) nu_nota_comp1_max, AVG(nu_nota_comp1) nu_nota_comp1_avg,
    MIN(nu_nota_comp2) nu_nota_comp2_min, MAX(nu_nota_comp2) nu_nota_comp2_max, AVG(nu_nota_comp2) nu_nota_comp2_avg,
    MIN(nu_nota_comp3) nu_nota_comp3_min, MAX(nu_nota_comp3) nu_nota_comp3_max, AVG(nu_nota_comp3) nu_nota_comp3_avg,
    MIN(nu_nota_comp4) nu_nota_comp4_min, MAX(nu_nota_comp4) nu_nota_comp4_max, AVG(nu_nota_comp4) nu_nota_comp4_avg,
    MIN(nu_nota_comp5) nu_nota_comp5_min, MAX(nu_nota_comp5) nu_nota_comp5_max, AVG(nu_nota_comp5) nu_nota_comp5_avg,
    MIN(nu_nota_redacao) nu_nota_redacao_min, MAX(nu_nota_redacao) nu_nota_redacao_max, AVG(nu_nota_redacao) nu_nota_redacao_avg,

    MIN((nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_redacao)/5) nu_nota_media_min, 
    MAX((nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_redacao)/5) nu_nota_media_max, 
    AVG((nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_redacao)/5) nu_nota_media_avg
FROM notas2012 GROUP BY cod_municipio_insc;

DROP TABLE IF EXISTS stats_notas2011;
CREATE TABLE stats_notas2011 AS
SELECT
    cod_municipio_insc,
    COUNT(1) candidatos_count,
    COUNT(nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_comp1+nu_nota_comp2+nu_nota_comp3+nu_nota_comp4+nu_nota_comp5+nu_nota_redacao) notas_count,

    MIN(nu_nt_cn) nu_nt_cn_min, MAX(nu_nt_cn) nu_nt_cn_max, AVG(nu_nt_cn) nu_nt_cn_avg,
    MIN(nu_nt_ch) nu_nt_ch_min, MAX(nu_nt_ch) nu_nt_ch_max, AVG(nu_nt_ch) nu_nt_ch_avg,
    MIN(nu_nt_lc) nu_nt_lc_min, MAX(nu_nt_lc) nu_nt_lc_max, AVG(nu_nt_lc) nu_nt_lc_avg,
    MIN(nu_nt_mt) nu_nt_mt_min, MAX(nu_nt_mt) nu_nt_mt_max, AVG(nu_nt_mt) nu_nt_mt_avg,

    MIN(nu_nota_comp1) nu_nota_comp1_min, MAX(nu_nota_comp1) nu_nota_comp1_max, AVG(nu_nota_comp1) nu_nota_comp1_avg,
    MIN(nu_nota_comp2) nu_nota_comp2_min, MAX(nu_nota_comp2) nu_nota_comp2_max, AVG(nu_nota_comp2) nu_nota_comp2_avg,
    MIN(nu_nota_comp3) nu_nota_comp3_min, MAX(nu_nota_comp3) nu_nota_comp3_max, AVG(nu_nota_comp3) nu_nota_comp3_avg,
    MIN(nu_nota_comp4) nu_nota_comp4_min, MAX(nu_nota_comp4) nu_nota_comp4_max, AVG(nu_nota_comp4) nu_nota_comp4_avg,
    MIN(nu_nota_comp5) nu_nota_comp5_min, MAX(nu_nota_comp5) nu_nota_comp5_max, AVG(nu_nota_comp5) nu_nota_comp5_avg,
    MIN(nu_nota_redacao) nu_nota_redacao_min, MAX(nu_nota_redacao) nu_nota_redacao_max, AVG(nu_nota_redacao) nu_nota_redacao_avg,

    MIN((nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_redacao)/5) nu_nota_media_min, 
    MAX((nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_redacao)/5) nu_nota_media_max, 
    AVG((nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_redacao)/5) nu_nota_media_avg
FROM notas2011 GROUP BY cod_municipio_insc;

DROP TABLE IF EXISTS stats_notas2010;
CREATE TABLE stats_notas2010 AS
SELECT
    cod_municipio_insc,
    COUNT(1) candidatos_count,
    COUNT(nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_comp1+nu_nota_comp2+nu_nota_comp3+nu_nota_comp4+nu_nota_comp5+nu_nota_redacao) notas_count,

    MIN(nu_nt_cn) nu_nt_cn_min, MAX(nu_nt_cn) nu_nt_cn_max, AVG(nu_nt_cn) nu_nt_cn_avg,
    MIN(nu_nt_ch) nu_nt_ch_min, MAX(nu_nt_ch) nu_nt_ch_max, AVG(nu_nt_ch) nu_nt_ch_avg,
    MIN(nu_nt_lc) nu_nt_lc_min, MAX(nu_nt_lc) nu_nt_lc_max, AVG(nu_nt_lc) nu_nt_lc_avg,
    MIN(nu_nt_mt) nu_nt_mt_min, MAX(nu_nt_mt) nu_nt_mt_max, AVG(nu_nt_mt) nu_nt_mt_avg,

    MIN(nu_nota_comp1) nu_nota_comp1_min, MAX(nu_nota_comp1) nu_nota_comp1_max, AVG(nu_nota_comp1) nu_nota_comp1_avg,
    MIN(nu_nota_comp2) nu_nota_comp2_min, MAX(nu_nota_comp2) nu_nota_comp2_max, AVG(nu_nota_comp2) nu_nota_comp2_avg,
    MIN(nu_nota_comp3) nu_nota_comp3_min, MAX(nu_nota_comp3) nu_nota_comp3_max, AVG(nu_nota_comp3) nu_nota_comp3_avg,
    MIN(nu_nota_comp4) nu_nota_comp4_min, MAX(nu_nota_comp4) nu_nota_comp4_max, AVG(nu_nota_comp4) nu_nota_comp4_avg,
    MIN(nu_nota_comp5) nu_nota_comp5_min, MAX(nu_nota_comp5) nu_nota_comp5_max, AVG(nu_nota_comp5) nu_nota_comp5_avg,
    MIN(nu_nota_redacao) nu_nota_redacao_min, MAX(nu_nota_redacao) nu_nota_redacao_max, AVG(nu_nota_redacao) nu_nota_redacao_avg,

    MIN((nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_redacao)/5) nu_nota_media_min, 
    MAX((nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_redacao)/5) nu_nota_media_max, 
    AVG((nu_nt_cn+nu_nt_ch+nu_nt_lc+nu_nt_mt+nu_nota_redacao)/5) nu_nota_media_avg
FROM notas2010 GROUP BY cod_municipio_insc;

