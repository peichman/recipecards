<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:recipe="http://xmlns.grim.ath.cx/recipe"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <!-- TODO: come up with various page configurations,
       e.g. index card, half letter, full letter hole-punched, etc.
  -->
  <xsl:param name="size">5x8</xsl:param>
  <xsl:variable name="height" select="substring-before($size, 'x')"/>
  <xsl:variable name="width" select="substring-after($size, 'x')"/>

  <xsl:template match="recipe:recipe">
    <fo:root font-family="DejaVuSerif" font-size="10pt">
      <fo:layout-master-set>
	<fo:simple-page-master master-name="recipe-card" page-height="{$height}in" page-width="{$width}in">
	  <fo:region-body margin=".25in .5in .25in .25in"/>
	</fo:simple-page-master>
      </fo:layout-master-set>

      <fo:page-sequence master-reference="recipe-card">
	<fo:flow flow-name="xsl-region-body">
	  <xsl:apply-templates/>
	</fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>

  <xsl:template match="recipe:title">
    <fo:block margin-bottom=".5em" font-weight="bold">
      <xsl:value-of select="."/>
    </fo:block>
  </xsl:template>

  <xsl:template match="recipe:ingredients">
    <fo:block margin-bottom=".5em">
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>

  <xsl:template match="recipe:ingredient">
    <fo:block line-height="1.25"><xsl:value-of select="."/></fo:block>
  </xsl:template>

  <xsl:template match="recipe:note">
    <fo:block line-height="1.25" margin-left="1em" font-size="90%"><xsl:value-of select="."/></fo:block>
  </xsl:template>

  <xsl:template match="recipe:para">
    <fo:block margin-bottom=".5em">
      <xsl:value-of select="."/>
    </fo:block>
  </xsl:template>

</xsl:stylesheet>
