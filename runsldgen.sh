#!/usr/bin/env bash

./sldgen.py --ano=2012 --metrica=nu_nt_cn_avg >notas2012_cn_ntile10.sld
./sldgen.py --ano=2012 --metrica=nu_nt_ch_avg >notas2012_ch_ntile10.sld
./sldgen.py --ano=2012 --metrica=nu_nt_lc_avg >notas2012_lc_ntile10.sld
./sldgen.py --ano=2012 --metrica=nu_nt_mt_avg >notas2012_mt_ntile10.sld
./sldgen.py --ano=2012 --metrica=nu_nota_redacao_avg >notas2012_redacao_ntile10.sld
./sldgen.py --ano=2012 --metrica=nu_nota_media_avg >notas2012_media_ntile10.sld

./sldgen.py --ano=2011 --metrica=nu_nt_cn_avg >notas2011_cn_ntile10.sld
./sldgen.py --ano=2011 --metrica=nu_nt_ch_avg >notas2011_ch_ntile10.sld
./sldgen.py --ano=2011 --metrica=nu_nt_lc_avg >notas2011_lc_ntile10.sld
./sldgen.py --ano=2011 --metrica=nu_nt_mt_avg >notas2011_mt_ntile10.sld
./sldgen.py --ano=2011 --metrica=nu_nota_redacao_avg >notas2011_redacao_ntile10.sld
./sldgen.py --ano=2011 --metrica=nu_nota_media_avg >notas2011_media_ntile10.sld

./sldgen.py --ano=2010 --metrica=nu_nt_cn_avg >notas2010_cn_ntile10.sld
./sldgen.py --ano=2010 --metrica=nu_nt_ch_avg >notas2010_ch_ntile10.sld
./sldgen.py --ano=2010 --metrica=nu_nt_lc_avg >notas2010_lc_ntile10.sld
./sldgen.py --ano=2010 --metrica=nu_nt_mt_avg >notas2010_mt_ntile10.sld
./sldgen.py --ano=2010 --metrica=nu_nota_redacao_avg >notas2010_redacao_ntile10.sld
./sldgen.py --ano=2010 --metrica=nu_nota_media_avg >notas2010_media_ntile10.sld

