from bs4 import BeautifulSoup
import requests
import sys,time,json


# https://stackoverflow.com/questions/9942594/unicodeencodeerror-ascii-codec-cant-encode-character-u-xa0-in-position-20
# encoding=utf8
import sys
reload(sys)
sys.setdefaultencoding('utf8')


TEMP_FILE="scrapi.txt"

def getNextLink(soup):

    
    HOST = "https://youtube.com"
    
    try:
        for x in soup.select("a.yt-uix-button.yt-uix-sessionlink"):
            buttonText = x.select("span")[0].contents
            if len(buttonText)>0 and "Next" in buttonText[0]:
                NextLink = HOST + x['href']
                return NextLink
        
        # Not Found
        return None
    except Exception as e:
        print "getNextLink",e
        return None


def getVideos(soup,attributes2search=["title","href"]):
    HOST = "https://youtube.com"
    
    videos=[]

    foundVids=soup.select("a.yt-uix-tile-link.yt-ui-ellipsis")
    print "\n---> Found %s Videos in current page.\n" % len(foundVids)
    #time.sleep(0.5)

    for c in range(len(foundVids)):
        v = foundVids[c]
        
        #print v

        print "\n",c
        #time.sleep(0.05)
        thisVideo={"description":"","age":"","views":""}

        try:
            for a in attributes2search:
                thisVideo[a]=v[a]
            
            # Finding No of views and age of video
            parentNode = v.parent.parent
            metaInfo = parentNode.select(".yt-lockup-meta-info > li")
            try:
                vAge=metaInfo[0].text
            except:
                vAge=""
            try:
                vViews=metaInfo[1].text
            except:
                vViews=""

            vDesc = parentNode.select(".yt-lockup-description")[0].text
            
            thisVideo["age"]=vAge
            thisVideo["views"]=vViews
            try:
                thisVideo["description"]=vDesc.encode('utf-8','ignore').decode()
            except Exception as e:
                print ("Excepiton in reading video description...",e)


        except Exception as e:
            print "EXCEPTION IN getVideos:",e

            
       
        exceptionFound=False

        # Print
        for attr in thisVideo:
            try:
                print "{} --> {}".format(attr,thisVideo[attr])
            except Exception as e:
                print "\nERROR ---> VIDEO NO:",c
                print e
                print "DUMPING RAW VIDEO DATA:\n--------"
                #print v,"\n--------"
                print parentNode,"\n--------"
                exceptionFound=True


        # Insert
        if not exceptionFound:
            videos.append(thisVideo)

    return videos



def scrap(searchWord=None,nPages=0,url=None):
    
    HOST = "https://youtube.com"
    
    if not url:
        URL = HOST + "/results?search_query=" + searchWord + "&sp=CAMSAhAB"
    else:
        URL=url
        nPages
    
    nPages=int(nPages)
    print "\n---> PAGES TO SCRAPE :",nPages
    
    response=requests.get(URL)
    page=response.text

    soup = BeautifulSoup(page,"html.parser")

    VIDS=getVideos(soup)

    with open(TEMP_FILE,'a+') as g:
        g.write(json.dumps(VIDS) + "\n")

    nextPage=getNextLink(soup)

    if nPages>1 and nextPage:
        print "\n--->Found next page at:",nextPage
        scrap(nPages=nPages-1,url=nextPage)
    else:
        print "\nEnd of Search Result... No more pages available"


if __name__=="__main__":
    
    if len(sys.argv)>=2:
        searchWord=sys.argv[1]  # Search Word
    if len(sys.argv)>=3:
        searchPages=sys.argv[2] # 20/page
        searchPages=int(searchPages)

    scrap(searchWord,searchPages)

    
    

