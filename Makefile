#leaveboy@gmail.com create
#目录结构
#|-- Makefile   								--Makefile
# Path Variable
# PATH_XSL= .

PATH_XSL 				= res/xsl
XSLFILE_HTML 		= $(PATH_XSL)/html.xsl
XSLFILE_PDF 		= $(PATH_XSL)/ubuntu-pdf.xsl
FOP_CONF_FILE 	= /etc/fop/xfop.conf


# Properties for make
SRC_FILE 				= $(wildcard src/*.xml)
HTML_FILE 			= $(SRC_FILE:.xml=.html) #替换结尾
FO_FILE 				= $(SRC_FILE:.xml=.fo)
PDF_FILE 				= $(SRC_FILE:.xml=.pdf)


.PHONY: html pdf clean


html : $(HTML_FILE)

#html
%.html : %.xml
	@mkdir -p out/html
	@xsltproc -o out/html/$(@F) $(XSLFILE_HTML) $<;
	@cp out/html/*.html /var/www/ -f 
	@cp res/css/docbook.css /var/www/ -f 
	@cp res/images /var/www/ -fr

pdf : $(FO_FILE)


%.fo : %.xml
	@mkdir -p out/pdf
	@xsltproc -o $(@F) $(XSLFILE_PDF) $<;
	@fop -c $(FOP_CONF_FILE) $(@F) -pdf $(PDF_FILE)
	@mv $(PDF_FILE) out/pdf/ 

clean:
	@rm -fr /var/www/* 
	@rm -fr out *.fo 
