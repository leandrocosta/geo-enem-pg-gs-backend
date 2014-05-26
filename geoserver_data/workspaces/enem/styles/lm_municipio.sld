<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
    xmlns="http://www.opengis.net/sld"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- a named layer is the basic building block of an sld document -->

  <NamedLayer>
    <Name>lm_municipio</Name>
    <UserStyle>
      <Title>Município</Title>
      <FeatureTypeStyle>
        <Rule>
          <MaxScaleDenominator>4000000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#CCCCCC</CssParameter>
              <CssParameter name="stroke-width">.5</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <TextSymbolizer>
            <Label> <ogc:PropertyName>nm_nng</ogc:PropertyName> </Label>
            <Font>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-weight">Bold</CssParameter>
              <CssParameter name="font-size">10</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint> <AnchorPointX>0.5</AnchorPointX> <AnchorPointY>0.5</AnchorPointY> </AnchorPoint>
                <Displacement> <DisplacementX>0</DisplacementX> <DisplacementY>-15</DisplacementY> </Displacement>
              </PointPlacement>
            </LabelPlacement>
            <Halo>
              <Radius> <ogc:Literal>2</ogc:Literal> </Radius>
              <Fill> <CssParameter name="fill">#FFFFFF</CssParameter> </Fill>
            </Halo>
            <Fill> <CssParameter name="fill">#000000</CssParameter> </Fill>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>