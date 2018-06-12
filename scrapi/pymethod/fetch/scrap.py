import requests
import sys

word=sys.argv[1]
pages=sys.argv[2]


HOST="http://localhost:8080/?search={}&nPages={}&csv".format(word,pages)


result=requests.get(HOST)

with open("data/{}.csv".format(word),'w') as g:
    g.write(result.text)
