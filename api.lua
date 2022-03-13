function post(dht_data)
  http.post(API_URL.."/sauna/data",
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
