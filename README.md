<h2>Siftr - Webscraping made easier</h2>

Usage: 
siftr -r http://example.com	(get raw html/response)
siftr -e http://example.com	(harvest email addresses)
siftr -s http//example.com -t a -a href	(search mode -- type 'a', attribute 'href')

Options
-r	Raw response
-e	Email harvest mode
-s	Search mode
	-t Type of element (a, div, script, etc...)
	-a Attribute (href, src, etc...)
	-i Includes (string to compare)
-j	JSON pretty generate response
