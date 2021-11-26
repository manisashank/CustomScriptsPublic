Hi folks, 

TL; DR:
Usage: xmlrpc wordlist.txt https://ngrokdomain
After the script execution we will get an output file with name output.html and we can open this with firefox

Example Usage: xmlrpc.sh wordpress_websites.txt https://postb.in/1637949446795-2966150005813
--------------------------------------------------------------------------------------------------------------
So let's know a little bit about the script before using it. 

We should provide 2 inputs to this script:
1) A txt file containing the wordpress domains (refer the file with name wordpress_websites.txt for more clarification)
2) A server link that is in our control

We get one file as output with name output.html. We can use any browser to open this tool which provides the response to each domain request in a tabluar form.

So what the script does it takes the domains mentioned in the wordpress_websites.txt file one by one and makes a POST request to /xmlrpc.php invoking pingback.ping method. (Resources to read more on this can be found under refernces section)

Some reports:
https://hackerone.com/reports/752073
https://hackerone.com/reports/96294
https://hackerone.com/reports/787179

References:
https://nitesculucian.github.io/2019/07/01/exploiting-the-xmlrpc-php-on-all-wordpress-versions/

Feel free to suggest any edits :)