import web
import yt,json

TEMP_FILE="scrapi.txt"
CSV_FILE="scrapi.csv"

urls = ("/.*", "hello")
app = web.application(urls, globals())

class hello:
    def GET(self):
        if "csv" in web.input():
            CSV_FLAG=1
        else:
            CSV_FLAG=0

        searchWord=web.input().search
        if "nPages" in web.input():
            nPages=int(web.input().nPages)
        else:
            nPages=1

        # Clean file
        with open(TEMP_FILE,'w') as g:
            g.write("")

        yt.scrap(searchWord,nPages=nPages)
        dataArray=[]
        with open(TEMP_FILE,'r') as f:
            while True:
                line=f.readline().strip()
                if line=="":break
                dataArray.append(json.loads(line))

        template="<hr><hr> <br> {} <br> {} <br> {} <br> {} <br> \n" + '<iframe width="420" height="315" src="https://www.youtube.com/embed/{}"></iframe>' 
        response=""

        csvG = open(CSV_FILE,"w")
        csvDATA=""

        for data in dataArray:
            for vid in data:
                print vid
                #csvDATA += "\"{}\",\"{}\",\"{}\",\"{}\"\n".format(vid["title"],vid["views"],vid["age"],vid["href"].split("=")[-1])
                csvDATA += "\"{}\",\"{}\",\"{}\",\"{}\",\"{}\"\n".format(vid["title"],vid["description"],vid["views"],vid["age"],"{}{}".format("https://www.youtube.com",vid["href"]))
                response+=template.format(vid["title"],vid["views"],vid["age"],vid["href"].split("=")[-1],vid["description"])

        csvG.write(csvDATA)

        if not CSV_FLAG:
            return " <!DOCTYPE html> \n <html><body>" + response + "</body></html>"
        else:
            return csvDATA

if __name__ == "__main__":
    app.run()
