# convert markdown to pdf
# requires pandoc and wkhtmltopdf engine
# see https://pandoc.org/MANUAL.html#variables-for-wkhtmltopdf

set -x
pandoc -V papersize=A4 \
	--metadata pagetitle="saé410" \
	-V margin-left=0.7in \
	-V margin-right=0.7in \
	-V margin-top=0.7in \
	-V margin-bottom=0.7in \
	README.md -t html -o t2.pdf
	
	

