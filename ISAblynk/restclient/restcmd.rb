require 'rest-client'


# get cmdline args
cmd,pin,value=ARGV
auth_token=File.read("authtoken.txt").chop


urlBase="http://blynk-cloud.com/#{auth_token}"


case cmd
when "help"
  print "ARGS -> status | update (pin) (value)"
  exit
when "update"
  url=urlBase+"/update/#{pin}?value=#{value}"
when "status"
  url=urlBase+"/isHardwareConnected"
else
  print "ARGS -> status | update (pin) (value)"
  exit  
end 

puts "\nENDPOINT->\n#{url}\n"
result=RestClient.get(url)

puts "\nHEADERS->"
result.headers.each { |header| print "#{header}\n" }

print "\nBODY->\n",result.body,"\n"
