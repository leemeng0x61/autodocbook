<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!--调用样式表-->
<!--<xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl/xhtml/chunk.xsl"/>-->
<xsl:import href="/usr/share/xml/docbook/xsl-stylesheets-1.77.1/xhtml/chunk.xsl"/>
<xsl:param name="chunker.output.encoding" select="'utf-8'"/> 
<!--标准信息所使用的语言-->
<xsl:param name="l10n.gentext.language" select="'zh_cn'"/>
<!--指定样式表-->
<xsl:param name="html.stylesheet" select="'docbook.css'"/>
<!--对于警告类信息是否使用图形 0 1-->
<xsl:param name="admon.graphics" select="1"/>

<!--生成的 HTML 文件存放的起始目录-->
<!--如果没有在 Makefile 或命令中指定，取消这里的注释
<xsl:param name="base.dir" select="'../html/'"/>
-->

<!--生成的 HTML 文件内容是否进行缩排 yes no-->
<xsl:param name="chunker.output.indent" select="'yes'"/>
<!--给节编号 0 1-->
<xsl:param name="section.autolabel" select="1"/>
<!--节的编号是否包含章的编号 0 1-->
<xsl:param name="section.label.includes.component.label" select="1"/>
<!--表格边框的属性是否使用预设 CSS 来指定-->
<xsl:param name="table.borders.with.css" select="1"/>
<!--参考书目是否进行编号-->
<xsl:param name="bibliography.numbered" select="1"></xsl:param>


<!--目录深度-->
<xsl:param name="toc.max.depth" select="2"/>
<!--sect#页面上显示目录-->
<xsl:param name="generate.section.toc.level" select="1"/>
<!--sect#可以生成目录条目-->
<xsl:param name="toc.section.depth" select="2"/>
<!--目录中收录哪些内容-->
<!--包括 toc,title,figure,table,example,equation -->
<!-- nop 为空 -->
<xsl:param name="generate.toc">
	appendix  toc
	article/appendix  nop
	article   toc,title
	book      toc,title,example
	chapter   toc,title
	part      toc,title
	preface   toc,title
	qandadiv  toc
	qandaset  toc
	reference toc,title
	sect1     toc
	sect2     toc
	sect3     toc
	sect4     toc
	sect5     toc
	section   toc
	set       toc,title
</xsl:param>

<!--在源码中插入 <?linebreak?> 标记，生成 Html 时替换为<br> -->
<xsl:template match="processing-instruction('linebreak')">
	<br/>
</xsl:template>

</xsl:stylesheet>  
