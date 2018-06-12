set word = %1
set pages = %2

wget "http://localhost:8080/?search=%word&nPages=%pages&csv" -O "data/%word.csv"

