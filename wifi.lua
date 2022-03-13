print("Setting up Wi-Fi...")

wifi.setmode(wifi.STATION)

local station_cfg = {
  -- credentials defined in separate file
  ssid = WIFI_SSID,
  pwd = WIFI_PWD,
  -- dont save wifi mode to flash
  save = false
}

wifi.sta.config(station_cfg)

