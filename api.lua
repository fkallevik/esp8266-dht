function post(dht_data)
  local proto = HOST_PORT == 80 and "http" or "https"
  http.post(proto.."://"..HOST.."/sauna/data",
            "Content-Type: application/json\r\n",
            "{\"temperature\":"..dht_data.temperature..", \"humidity\":"..dht_data.humidity.."}",
            function(code)
              if code < 0 then
                print("HTTP Failed to push sensor data")
              else
                print("HTTP Succesfully pushed sensor data")
              end
  end)
end
