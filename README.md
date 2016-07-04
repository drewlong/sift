<h2>Siftr - Webscraping made easier</h2>

Usage: <br>
<hr />
siftr -r http://example.com&#09;(get raw html/response) <br>
siftr -e http://example.com&#09;(harvest email addresses) <br>
siftr -s http//example.com -t a&#09;(search mode -- type 'a', attribute 'href')<br>

Options<br>
-r&#09;Raw response <br>
-e&#09;Email harvest mode <br>
-s&#09;Search mode<br>
&#09;&#09;-t Type of element (a, div, script, etc...)<br>
&#09;&#09;-a Attribute (href, src, etc...)<br>
&#09;&#09;-i Includes (string to compare)<br>
-j&#09;JSON pretty generate response<br>
