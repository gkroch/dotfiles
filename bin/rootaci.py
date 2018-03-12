#!/usr/bin/env python3
from urllib.request import urlopen
from urllib.error import HTTPError
import sys
from html.parser import HTMLParser
import subprocess

URL="http://git.insieme.local/cgi-bin/generateRootPassword.py?key="

class codeHTMLParser(HTMLParser):
    def __init__(self):
        HTMLParser.__init__(self)
        self.found_code = False
        self.code ="insieme"

    def handle_starttag(self,tag,attrs):
        if tag != 'code':
            return
        self.found_code = True

    def handle_data(self, data):
        if self.found_code:
            self.code = data
            self.found_code= False



def write_to_clipboard(output):
    process = subprocess.Popen(
            'pbcopy', env={'LANG': 'en_US.UTF-8'}, stdin=subprocess.PIPE)
    process.communicate(output.encode('utf-8'))

def read_from_clipboard():
    return subprocess.check_output(
        'pbpaste', env={'LANG': 'en_US.UTF-8'}).decode('utf-8')


if __name__ == "__main__" :
    if len(sys.argv) < 1:
        print("Keep it real! -- Manuel")
        exit(1)
    elif len(sys.argv) == 1:
        query_string = read_from_clipboard()
    else:
        query_string = sys.argv[1]

    try:
        re = urlopen(URL+query_string.strip())
        response = re.read()
        re.close()
    except HTTPError as e:
        print (e , 'Getting code error from insieme.local')
        exit(1)

    code_parser = codeHTMLParser()
    code_parser.feed(str(response))
    code = code_parser.code
    print('DBG token is: ' + query_string + '\n')
    print('Root password is: ' + code)
    write_to_clipboard(code)
