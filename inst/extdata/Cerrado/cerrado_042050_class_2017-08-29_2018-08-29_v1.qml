<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" version="3.10.4-A Coruña" maxScale="0" minScale="1e+08" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property value="false" key="WMSBackgroundLayer"/>
    <property value="false" key="WMSPublishDataSourceUrl"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property value="Value" key="identify/format"/>
  </customproperties>
  <pipe>
    <rasterrenderer opacity="1" type="paletted" band="1" alphaBand="-1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <colorPalette>
        <paletteEntry value="1" alpha="255" color="#c14d00" label="1 Annual_Crop"/>
        <paletteEntry value="2" alpha="255" color="#367906" label="2 Cerradao"/>
        <paletteEntry value="3" alpha="255" color="#7cc900" label="3 Cerrado"/>
        <paletteEntry value="5" alpha="255" color="#d2ff2d" label="5 Open_Cerrado"/>
        <paletteEntry value="6" alpha="255" color="#fffbc7" label="6 Pasture"/>
        <paletteEntry value="10" alpha="255" color="#4cb6f3" label="10 Water"/>
        <paletteEntry value="7" alpha="255" color="#f00060" label="7 Perennial_Crop"/>
        <paletteEntry value="8" alpha="255" color="#81f4df" label="8 Silviculture"/>
        <paletteEntry value="9" alpha="255" color="#c470cd" label="9 Sugarcane"/>
        <paletteEntry value="4" alpha="255" color="#cbba6b" label="4 Nat_NonVeg"/>
      </colorPalette>
      <colorramp type="randomcolors" name="[source]"/>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0"/>
    <huesaturation colorizeOn="0" grayscaleMode="0" colorizeRed="255" colorizeGreen="128" colorizeBlue="128" saturation="0" colorizeStrength="100"/>
    <rasterresampler maxOversampling="2"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
