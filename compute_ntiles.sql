/*
SELECT cume, MAX(nu_nota_redacao_avg) AS max_var FROM (
   SELECT nu_nota_redacao_avg, NTILE(10) OVER (ORDER BY nu_nota_redacao_avg) AS cume FROM (
       SELECT cod_municipio_insc, AVG(nu_nota_redacao) nu_nota_redacao_avg
       FROM notas2012 WHERE nu_nota_redacao IS NOT NULL GROUP BY cod_municipio_insc
   ) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

SELECT cume, MAX(nu_nota_redacao_avg) AS max_var FROM (
   SELECT nu_nota_redacao_avg, NTILE(10) OVER (ORDER BY nu_nota_redacao_avg) AS cume FROM (
       SELECT cod_municipio_insc, AVG(nu_nota_redacao) nu_nota_redacao_avg
       FROM notas2011 WHERE nu_nota_redacao IS NOT NULL GROUP BY cod_municipio_insc
   ) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

SELECT cume, MAX(nu_nota_redacao_avg) AS max_var FROM (
   SELECT nu_nota_redacao_avg, NTILE(10) OVER (ORDER BY nu_nota_redacao_avg) AS cume FROM (
       SELECT cod_municipio_insc, AVG(nu_nota_redacao) nu_nota_redacao_avg
       FROM notas2010 WHERE nu_nota_redacao IS NOT NULL GROUP BY cod_municipio_insc
   ) AS qry
) AS tmp GROUP BY cume ORDER BY cume;
*/

-- 2012/ciências da natureza: 427.909999847412, 435.490123607494, 442.146729371258, 447.93139087352, 454.394870855869, 461.975280647421, 470.12187461853, 478.629958056245, 489.303523754058, 545.816670735677
SELECT cume, MAX(nu_nt_cn_avg) AS max_var FROM (
   SELECT nu_nt_cn_avg, NTILE(10) OVER (ORDER BY nu_nt_cn_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_cn_avg FROM stats_notas2012) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2012/ciências humanas: 469.201142578125, 479.531159995259, 486.766506968244, 492.960414250692, 499.694737805818, 506.649654414736, 514.578847444974, 522.967689866286, 533.497802734375, 599.566660563151
SELECT cume, MAX(nu_nt_ch_avg) AS max_var FROM (
   SELECT nu_nt_ch_avg, NTILE(10) OVER (ORDER BY nu_nt_ch_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_ch_avg FROM stats_notas2012) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2012/linguagens e códigos: 443.635775730528, 453.576791320626, 460.261397081263, 467.058107943148, 473.682756621262, 480.801546417998, 488.630234119504, 496.320775430109, 506.833383260212, 549.583338419596
SELECT cume, MAX(nu_nt_lc_avg) AS max_var FROM (
   SELECT nu_nt_lc_avg, NTILE(10) OVER (ORDER BY nu_nt_lc_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_lc_avg FROM stats_notas2012) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2012/matemática: 430.763184666757, 445.110101564966, 456.296972221712, 467.801491353049, 480.334373474121, 494.207245315331, 509.426190694173, 524.645161290323, 542.618219296295, 646.666651407878
SELECT cume, MAX(nu_nt_mt_avg) AS max_var FROM (
   SELECT nu_nt_mt_avg, NTILE(10) OVER (ORDER BY nu_nt_mt_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_mt_avg FROM stats_notas2012) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2012/redação: 434.642806012885, 452.407407407407, 464.296819787986, 474.545454545455, 483.34693877551, 492.015209125475, 501.54356846473, 513.4375, 528.854166666667, 670
SELECT cume, MAX(nu_nota_redacao_avg) AS max_var FROM (
   SELECT nu_nota_redacao_avg, NTILE(10) OVER (ORDER BY nu_nota_redacao_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nota_redacao_avg FROM stats_notas2012) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2012/média: 445.900883214614, 456.870860072545, 464.913683439556, 471.993416698301, 480.212059828814, 488.594370117188, 498.176203613281, 508.112902832033, 520.448109190614, 602.326668294271
SELECT cume, MAX(nu_nota_media_avg) AS max_var FROM (
   SELECT nu_nota_media_avg, NTILE(10) OVER (ORDER BY nu_nota_media_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nota_media_avg FROM stats_notas2012) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

--

-- 2011/ciências da natureza:
412.868964464911
423.725201366394
431.149138088884
438.316309851127
446.277972146739
454.894037675728
464.392781680392
473.057895593476
483.732017650939
535.620001220703

SELECT cume, MAX(nu_nt_cn_avg) AS max_var FROM (
   SELECT nu_nt_cn_avg, NTILE(10) OVER (ORDER BY nu_nt_cn_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_cn_avg FROM stats_notas2011) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2011/ciências humanas:
423.982143765404
434.898307288912
442.328253464472
449.427776760525
456.615909110042
464.079320281686
471.771871566772
480.109756097561
490.384615384615
573.066670735677

SELECT cume, MAX(nu_nt_ch_avg) AS max_var FROM (
   SELECT nu_nt_ch_avg, NTILE(10) OVER (ORDER BY nu_nt_ch_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_ch_avg FROM stats_notas2011) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2011/linguagens e códigos:
469.364000244141
480.068807899405
487.468033906333
494.425531265583
501.275925247758
507.950723178145
515.419998508029
523.873792766703
533.266667683919
571.4409313963

SELECT cume, MAX(nu_nt_lc_avg) AS max_var FROM (
   SELECT nu_nt_lc_avg, NTILE(10) OVER (ORDER BY nu_nt_lc_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_lc_avg FROM stats_notas2011) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2011/matemática:
445.109747160213
457.307437360779
467.779336964512
479.311628474746
491.057143523913
505.938868393482
520.382837096257
534.081240317318
552.292570615771
690.219995117188

SELECT cume, MAX(nu_nt_mt_avg) AS max_var FROM (
   SELECT nu_nt_mt_avg, NTILE(10) OVER (ORDER BY nu_nt_mt_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_mt_avg FROM stats_notas2011) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2011/redação:
290.985915492958
318.4
335.542168674699
349.846479618846
362.759433962264
376.754637794737
391.192052980132
407.550253220334
430
547.111111111111

SELECT cume, MAX(nu_nota_redacao_avg) AS max_var FROM (
   SELECT nu_nota_redacao_avg, NTILE(10) OVER (ORDER BY nu_nota_redacao_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nota_redacao_avg FROM stats_notas2011) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2011/média:
439.663075608473
451.69166788737
460.534485066056
469.510908785734
478.053112562647
488.072000858702
498.701880987906
508.682737263729
521.553826175893
583.995986328125
SELECT cume, MAX(nu_nota_media_avg) AS max_var FROM (
   SELECT nu_nota_media_avg, NTILE(10) OVER (ORDER BY nu_nota_media_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nota_media_avg FROM stats_notas2011) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

--

-- 2010/ciências da natureza:
437.127586627829
447.540908624318
454.636640242948
461.978545698686
469.559259485315
476.797462321377
485.294861904926
493.887100711946
504.89166853163
547.950001017253
SELECT cume, MAX(nu_nt_cn_avg) AS max_var FROM (
   SELECT nu_nt_cn_avg, NTILE(10) OVER (ORDER BY nu_nt_cn_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_cn_avg FROM stats_notas2010) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2010/ciências humanas:
491.476808852044
502.37
511.077678407942
518.310710362026
525.236249160767
532.624999712098
540.320175170898
548.822581629599
559.27972070654
623.549987792969

SELECT cume, MAX(nu_nt_ch_avg) AS max_var FROM (
   SELECT nu_nt_ch_avg, NTILE(10) OVER (ORDER BY nu_nt_ch_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_ch_avg FROM stats_notas2010) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2010/linguagens e códigos:
450.522146545001
462.517497825623
471.585713780912
479.50833159802
487.751325759213
495.835111626519
504.388889948527
513.956035535522
525.088894314236
576.161541278546

SELECT cume, MAX(nu_nt_lc_avg) AS max_var FROM (
   SELECT nu_nt_lc_avg, NTILE(10) OVER (ORDER BY nu_nt_lc_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_lc_avg FROM stats_notas2010) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2010/matemática:
435.102942971622
446.866070883615
456.892052454664
466.531147741099
478.442246196751
491.364807041588
504.119999389648
517.181673209506
534.460716247559
615.218916609481

SELECT cume, MAX(nu_nt_mt_avg) AS max_var FROM (
   SELECT nu_nt_mt_avg, NTILE(10) OVER (ORDER BY nu_nt_mt_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nt_mt_avg FROM stats_notas2010) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2010/redação:
328.995901639344
356.944444444444
375.213675213675
389.237516869096
402.909779614325
415.47619047619
428.846153846154
443.820224719101
464.788732394366
733.333333333333

SELECT cume, MAX(nu_nota_redacao_avg) AS max_var FROM (
   SELECT nu_nota_redacao_avg, NTILE(10) OVER (ORDER BY nu_nota_redacao_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nota_redacao_avg FROM stats_notas2010) AS qry
) AS tmp GROUP BY cume ORDER BY cume;

-- 2010/média:
468.729564633577
479.880000727227
488.776510265262
496.418085916963
504.125003051758
512.209269602706
520.808570731027
530.268766996786
542.467790490845
596.009221003606

SELECT cume, MAX(nu_nota_media_avg) AS max_var FROM (
   SELECT nu_nota_media_avg, NTILE(10) OVER (ORDER BY nu_nota_media_avg) AS cume FROM ( SELECT cod_municipio_insc, nu_nota_media_avg FROM stats_notas2010) AS qry
) AS tmp GROUP BY cume ORDER BY cume;
