word=$1
pages=$2

wget "http://localhost:8080/?search=$word&nPages=$pages&csv" -O "data/$word.csv"

