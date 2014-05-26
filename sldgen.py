#!/usr/bin/env python

"""Usage:
    sldgen.py --ano=ANO --metrica=METRICA
"""
from docopt import docopt
import psycopg2
from sld import *

def create_rule(fts, propname, min, max, fill_value):
    #rule = fts.create_rule('%f-%f' % (min, max), PolygonSymbolizer)
    rule = fts.create_rule('%f-%f' % (min, max))
    del rule.PointSymbolizer
    rule.Title = '%.2f - %.2f' % (min, max)
    f1 = None
    if (min > 0):
        f1 = Filter(rule)
        f1.PropertyIsGreaterThan = PropertyCriterion(f1, 'PropertyIsGreaterThan')
        f1.PropertyIsGreaterThan.PropertyName = propname
        f1.PropertyIsGreaterThan.Literal = str(min)
        #f1.PropertyIsGreaterThan.Literal = str(round(min,2))
    f2 = Filter(rule)
    f2.PropertyIsLessThanOrEqualTo = PropertyCriterion(f2, 'PropertyIsLessThanOrEqualTo')
    f2.PropertyIsLessThanOrEqualTo.PropertyName = propname
    f2.PropertyIsLessThanOrEqualTo.Literal = str(max)
    #f2.PropertyIsLessThanOrEqualTo.Literal = str(round(max,2))
    if (min > 0):
        rule.Filter = f1+f2
    else:
        rule.Filter = f2
    #rule.PolygonSymbolizer.Fill.CssParameters[0].Value = csss[record[0]-1]
    #del rule.PolygonSymbolizer.Stroke
    sym = rule.create_symbolizer('Polygon')
    sym.Fill = Fill(sym)
    sym.Fill.create_cssparameter('fill', fill_value)

if __name__ == '__main__':
    arguments = docopt(__doc__)
    #print arguments

    sld_doc = StyledLayerDescriptor()
    nl = sld_doc.create_namedlayer('notas%(--ano)s_%(--metrica)s_ntile10' % arguments)
    us = nl.create_userstyle()
    us.Title = 'Notas %(--ano)s %(--metrica)s ntile10' % arguments
    fts = us.create_featuretypestyle()

    conn = psycopg2.connect('dbname=enem user=enem password=enem')

    sql = 'SELECT MIN(%(--metrica)s) FROM stats_notas%(--ano)s' % arguments
    cur = conn.cursor()
    cur.execute(sql)
    min = cur.fetchone()[0]
    min = min-.01

    #sql = 'SELECT cume, ROUND(CAST(MAX(%(--metrica)s) AS NUMERIC), 2) AS max_var FROM (SELECT %(--metrica)s, NTILE(10) OVER (ORDER BY %(--metrica)s) AS cume FROM ( SELECT cod_municipio_insc, %(--metrica)s FROM stats_notas%(--ano)s) AS qry) AS tmp GROUP BY cume ORDER BY cume' % arguments
    sql = 'SELECT cume, MAX(%(--metrica)s) AS max_var FROM (SELECT %(--metrica)s, NTILE(10) OVER (ORDER BY %(--metrica)s) AS cume FROM ( SELECT cod_municipio_insc, %(--metrica)s FROM stats_notas%(--ano)s) AS qry) AS tmp GROUP BY cume ORDER BY cume' % arguments
    #print sql
    cur = conn.cursor()
    cur.execute(sql)

    # http://www.perbang.dk/rgbgradient/
    csss = ['#FF0000', '#FF3300', '#FF6600', '#FF9900', '#FFCC00', '#FEFF00', '#CBFF00', '#98FF00', '#65FF00', '#65FF00', '#00FF00']
    #min = 0

    for record in cur:
        max = record[1]
        create_rule(fts, arguments['--metrica'], min, max, csss[record[0]-1])
        min = max

    #max = 1000
    #create_rule(fts, arguments['--metrica'], min, max, csss[10])

    """
    rule = fts.create_rule('contorno', LineSymbolizer)
    rule.LineSymbolizer.Stroke.CssParameters[0].Value = '#CCCCCC'
    rule.LineSymbolizer.Stroke.create_cssparameter('stroke-width', '.5')

    rule = fts.create_rule('rotulo', TextSymbolizer)
    del rule.Title
    """

    content = sld_doc.as_sld(pretty_print=True)

    content = content.replace('<sld:Title>contorno</sld:Title>', '<MaxScaleDenominator>4000000</MaxScaleDenominator>')

    content = content.replace('<sld:TextSymbolizer/>', """
            <sld:TextSymbolizer>
                <sld:Label> <ogc:PropertyName>nm_nng</ogc:PropertyName> </sld:Label>
                <sld:Font>
                    <sld:CssParameter name="font-family">Arial</sld:CssParameter>
                    <sld:CssParameter name="font-weight">Bold</sld:CssParameter>
                    <sld:CssParameter name="font-size">10</sld:CssParameter>
                </sld:Font>
                <sld:LabelPlacement>
                    <sld:PointPlacement>
                        <sld:AnchorPoint> <sld:AnchorPointX>0.5</sld:AnchorPointX> <sld:AnchorPointY>0.5</sld:AnchorPointY> </sld:AnchorPoint>
                        <sld:Displacement> <sld:DisplacementX>0</sld:DisplacementX> <sld:DisplacementY>-15</sld:DisplacementY> </sld:Displacement>
                    </sld:PointPlacement>
                </sld:LabelPlacement>
                <sld:Halo>
                    <sld:Radius> <ogc:Literal>2</ogc:Literal> </sld:Radius>
                    <sld:Fill> <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter> </sld:Fill>
                </sld:Halo>
                <sld:Fill> <sld:CssParameter name="fill">#000000</sld:CssParameter> </sld:Fill>
            </sld:TextSymbolizer>
""")
    print content

