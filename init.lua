dofile(".env.lua")
dofile("wifi.lua")
dofile("dht.lua")
dofile("api.lua")

-- start application when ip has been assigned
wifi.eventmon.register(wifi.eventmon.STA_GOT_IP, function(T)
                         print("Wifi connection is ready! IP address is: "..T.IP)

                         -- fetch and post data every x milliseconds
                         tmr.create():alarm(60000, tmr.ALARM_AUTO, function()
                                              dht_data = getDHTData()
                                              post(dht_data)
                                           end)
end)

