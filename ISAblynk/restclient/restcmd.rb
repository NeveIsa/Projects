require 'rest-client'


# get cmdline args
cmd,pin,value=ARGV
auth_token=File.read("../token.txt").chop
puts "TOKEN: #{auth_token}"

urlBase="http://blynk-cloud.com/#{auth_token}"
urlBase="http://188.166.206.43/#{auth_token}"


case cmd
when "help"
  print "ARGS -> status | update (pin) (value)\n"
  exit
when "update"
  url=urlBase+"/update/#{pin}?value=#{value}"
when "status"
  url=urlBase+"/isHardwareConnected"
else
  print "ARGS -> status | update (pin) (value)\n"
  exit  
end 

puts "\nENDPOINT->\n#{url}\n"
result=RestClient.get(url)

puts result

puts "\nHEADERS->"
result.headers.each { |header| print "#{header}\n" }

print "\nBODY->\n",result.body,"\n"
