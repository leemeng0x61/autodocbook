<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
version="1.0">

<!--<xsl:import href="/usr/share/ubuntu-docs/libs/ubuntu-pdf.xsl"/>-->
<xsl:import href="/usr/share/xml/docbook/xsl-stylesheets-1.77.1/fo/docbook.xsl"/>
<xsl:param name="l10n.gentext.language" select="'zh_cn'"/>
<xsl:param name="body.font.family">WenQuanYi Micro Hei Light</xsl:param>
<xsl:param name="monospace.font.family">WenQuanYi Micro Hei Mono Light</xsl:param>
<xsl:param name="title.font.family">WenQuanYi Micro Hei</xsl:param> 

<xsl:param name="pdf.stylesheet" select="'docbook.css'"/>
<xsl:param name="saxon.character.representation" select="'native'"/>
<xsl:param name="admon.graphics" select="1"/>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>
<xsl:param name="table.borders.with.css" select="1"/>
<xsl:param name="use.extensions" select="1"/>
<xsl:param name="tablecolumns.extension" select="0"/>
<xsl:param name="callout.unicode" select="1"/>
<xsl:param name="callout.unicode.start.character" select="10102"></xsl:param>
<xsl:param name="variablelist.as.blocks" select="1"></xsl:param>
<xsl:param name="callout.graphics" select="0"/>
<xsl:param name="fop.extensions" select="1"/>
<xsl:param name="hyphenate">false</xsl:param>
<xsl:param name="paper.type" select="'A4'"/>
<xsl:param name="draft.mode" select="'no'"/>
<xsl:param name="generate.toc">
appendix toc
article/appendix nop
article toc,title
book toc,title
chapter nop
part toc,title
preface toc,title
qandadiv toc
qandaset toc
reference toc,title
sect1 nop
sect2 nop
sect3 nop
sect4 nop
sect5 nop
section nop
set toc,title
</xsl:param>

</xsl:stylesheet>
