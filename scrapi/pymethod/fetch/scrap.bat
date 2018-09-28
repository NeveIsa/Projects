set word=%1
set pages=%2


echo %word%
echo %pages%

curl "http://localhost:8080/?search=%word%&nPages=%pages%&csv" -o "data/%word%.csv"

