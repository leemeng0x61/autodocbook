<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!--xsl:import href="http://docbook.sourceforge.net/release/xsl/xhtml/chunk.xsl"/-->
	<xsl:import href="/usr/share/xml/docbook/xsl-stylesheets-1.77.1/xhtml/chunk.xsl"/>

  <xsl:param name="chunker.output.indent" select="'yes'"/>
  <xsl:param name="section.autolabel" select="1"/>
  <xsl:param name="section.label.includes.component.label" select="1"/>
  <xsl:param name="html.stylesheet" select="'docbook.css'"/>
  <xsl:param name="bibliography.numbered" select="1"/>
  <xsl:param name="l10n.gentext.language" select="'zh_cn'"/>
  <xsl:param name="generate.toc">
    appendix  toc
    article/appendix  nop
    article   toc,title
    book      toc,title
    chapter   toc,title
    part      toc,title
    preface   toc,title
    qandadiv  toc
    qandaset  toc
    reference toc,title
    sect1     toc
    sect2     toc
    sect3     toc
    section   toc
    set       toc,title
  </xsl:param>

</xsl:stylesheet>
