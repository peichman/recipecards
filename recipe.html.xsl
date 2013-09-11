<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:recipe="http://xmlns.grim.ath.cx/recipe"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="recipe:recipe">
    <html>
      <head>
        <xsl:apply-templates select="title" mode="head"/>
      </head>
      <body class="hRecipe">
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="recipe:title" mode="head">
    <title><xsl:value-of select="."/></title>
  </xsl:template>

  <xsl:template match="recipe:title">
    <h1 class="fn"><xsl:value-of select="."/></h1>
  </xsl:template>

  <xsl:template match="recipe:ingredients">
    <ul>
      <xsl:apply-templates/>
    </ul>
  </xsl:template>

  <xsl:template match="recipe:ingredient">
    <li class="ingredient"><xsl:value-of select="."/></li>
  </xsl:template>

  <xsl:template match="recipe:note">
    <div style="margin-left:1em; font-size: 90%"><xsl:value-of select="."/></div>
  </xsl:template>

  <xsl:template match="recipe:para">
    <p>
      <xsl:value-of select="."/>
    </p>
  </xsl:template>

</xsl:stylesheet>
