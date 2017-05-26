
echo "\nChecking internet connection...Please wait\n"
sleep 2

if nc -zw1 google.com 443; then
  echo "\nWe have connectivity........Hurray\n"
else
  echo "\nPlease connect to network... Exiting because NO INTERNET\n"
fi


echo "\n--------------> Updating APT GET (Enter Password if asked. [default=raspberry])\n"
sleep 1
sudo apt-get update

echo "\n--------------> Upgrading APT GET\n"
sleep 1
sudo apt-get upgrade

echo "\n--------------> Installing PIP...\n"
sleep 1
sudo apt-get install python-pip

echo "\n--------------> Installing PI CAMERA...\n"
sleep 1
sudo apt-get install python-picamera

python -c "import picamera"

if [$? == 0]
then
  echo "\n---> PiCamera installed successfully.\n"
else
  echo "\n---> PiCamera was not found.... Trying alternative by PIP install"
  pip install picamera
fi

python -c "import picamera"

if [ $? == 0 ]
then
  echo "\nPiCamera successfully installed via PIP\n"
else
  echo "PiCamera installation FAILED....\n"
fi


echo "\n--------------> Installing webpy\n"
sleep 1
pip install web.py


echo "\nDEPENDENCY SCRIPT.....................COMPLETED\n"


echo "\n----> Testing server.py\n"

echo "\n Please visit from browser >> http://localhost:8080/stop"

sleep 1

python server.py


