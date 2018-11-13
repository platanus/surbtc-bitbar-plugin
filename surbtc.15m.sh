#!/bin/sh

# <bitbar.title>Buda Ticker</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Agustin Feuerhake</bitbar.author>
# <bitbar.author.github>agustinf</bitbar.author.github>
# <bitbar.desc>Shows prices and volume for cryptocurrencies in SurBTC</bitbar.desc>
# <bitbar.image>https://raw.githubusercontent.com/platanus/surbtc-bitbar-plugin/master/image/image.png</bitbar.image>
# <bitbar.dependencies>bash<bitbar.dependencies>
buda_icon='iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAAlwSFlzAAALEwAACxMBAJqcGAAAA6ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDUuNC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIgogICAgICAgICAgICB4bWxuczp0aWZmPSJodHRwOi8vbnMuYWRvYmUuY29tL3RpZmYvMS4wLyIKICAgICAgICAgICAgeG1sbnM6ZXhpZj0iaHR0cDovL25zLmFkb2JlLmNvbS9leGlmLzEuMC8iPgogICAgICAgICA8eG1wOk1vZGlmeURhdGU+MjAxOC0wMy0xNFQwOTowMzo4MjwveG1wOk1vZGlmeURhdGU+CiAgICAgICAgIDx4bXA6Q3JlYXRvclRvb2w+UGl4ZWxtYXRvciAzLjc8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgICAgPHRpZmY6T3JpZW50YXRpb24+MTwvdGlmZjpPcmllbnRhdGlvbj4KICAgICAgICAgPHRpZmY6Q29tcHJlc3Npb24+NTwvdGlmZjpDb21wcmVzc2lvbj4KICAgICAgICAgPHRpZmY6UmVzb2x1dGlvblVuaXQ+MjwvdGlmZjpSZXNvbHV0aW9uVW5pdD4KICAgICAgICAgPHRpZmY6WVJlc29sdXRpb24+NzI8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjcyPC90aWZmOlhSZXNvbHV0aW9uPgogICAgICAgICA8ZXhpZjpQaXhlbFhEaW1lbnNpb24+MTY8L2V4aWY6UGl4ZWxYRGltZW5zaW9uPgogICAgICAgICA8ZXhpZjpDb2xvclNwYWNlPjE8L2V4aWY6Q29sb3JTcGFjZT4KICAgICAgICAgPGV4aWY6UGl4ZWxZRGltZW5zaW9uPjE2PC9leGlmOlBpeGVsWURpbWVuc2lvbj4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+CtuFc3gAAAIxSURBVDgRpVM9axRRFD33zcxuNo3EiGCVQtFOsRZRRIiNYQddf0JEJasSLSwi2wXxA7MRIYK9ICS7ppAUQkzARZtEbOysBcVIJBJ35l3P3d0ZsoqVB97Mm/vuOe9+jcCgKmN1nHQO90Vx1PuO9a8Hz6GCNZ5PvqhiGSIamKm8B7eDALPqMcLVBxF+2iJUuRXsC0KcO/QW0ceXtRWJ63qCqkv0Kfq062hPI7oI8Ak2oQjJLfHdgbNrgW1GO+qoOkNrThaGGRRocdii4FOen+FaM1KG3kVF4zoSjmjvZnOSAJtM4xnto42vGG9elTckJlkamYhxjBtmYffCeseDG82qrGaO43Maff6JokX2J4wbZkbHHQ2vGxOyGt/VvTqAa5Jg8clFaZUfaotJHw4ilNJ2xui++3VZLDP7COejEm6lgv323djAZJoiZs6vGElfn/oFzJtwggFNWMwAU+W6XqrsxnBzQpaSLxhjLZ4zkhz9AspiGTxaDPUDu3EwLOBxW3DZzIs12WJ3P+2sRy5gA+QFB+JHOrxwXVrJNk5xTfk2rvhBPDCBs3M6yDRGuHJIPKuad4L58WydBbuz8Q3zyzWWkahUNPh1DKd5802mcJyXFWySOm0vz+g6h6Y7CzZ9nAU6KOswT6d7SYLEFVDl/gL/hWJqkiRzXizV9/8cZSsUhb7T15M4lBEtot7MdEd5oYoV2qYZ3o+dxbF+M9ddvG2o03sqGczHfLmdNi6DJv7jd/4NTRL2nP8acAcAAAAASUVORK5CYII='
bitcoin_icon='iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAQAAABLCVATAAAACXBIWXMAABYlAAAWJQFJUiTwAAABY0lEQVRIx2P4z0AdyEBzg1DAdIYfQJgCZHmCWdsYMAFRBs0BC2UAWT5g1p6hbZAggwIcrgALVQNZSWDWAQY24g3qwRtJ/xgeMqxkCGJgotQgGLzAoEUdg/4zvGQQIxzYLAyODF/gQv0MlgwWDK4MOQxbgV5DKG0nLtZ2wIUykII2EMmoU8QZtAWrQQwMB+HiDygzaDNc/CQlBskwfIKLN5JrkAxDFsMTuOh9BiFSDXoHDI2HDB9RlJ1kECc2r20hkI5OMXhQxyAQzCTNoDJgaAgAvaLLEMkwn+EbkuLvDBLkR78yUoD/Z0gn3yAGhnwk5V2UGBRGLYNmICkvIGzQLqwG8TA0oJQAVvgMymcoYehg+AUXWgoM0kygWC/DbpQ4+89wjYERt0FiRNeNX4GlFJ505EykMacZDPGn7HwCBnxiOMcwjcGJcOEvzqADh2vBQk1AVhaYdZCBc7TKpqJBA9ZiAwDMH49EXcmY2QAAAABJRU5ErkJggg=='
eth_icon='iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAACXBIWXMAABYlAAAWJQFJUiTwAAAC/UlEQVRYw+WYX6gMcRTH997158GD/7Z7mzm/8/vN7KZNN1ohL+vBG+GmyN8Hrrh0S3nQxQPPIg9S8i9SJEUePVGKuOF6Q0qkkD9JQv6M7xmzzO6dXcvO7JJbp+bOTr/zmXO+55zfb1Ke56X+Jkv980D1/GnS8zXRPFy21/N8okDGmEnG5luOUjsN8/qWAznERx2bHgqQo/jl5M7O8S0DcpWaBYivISDPKHWoVUDtABgQiDCQAGaZZzYdCJHYEABUAokN1BJ47ECiE9FLDSBPK9XbNCA4Oxh2HgUEe5XryE1IHMjYZjqcfakDCPf5SNJAbYbo2lDHVYAgcKnExIBcorURTmsBedrmm5UCjwWIiMZiPDyPdEp8Drpajut3kcBEm2IHMor3l785fQTEcehkAaLTD1ukLLUM9/phjyu09Np13YmxAWWVmoqFPwfpeSrpQbQWoxdd8AUeThnR3Sxxn8O8GjPu6s8o8bG4gNqw4BV/gGrdA0frAHD7lxpCVAC8G88vBMwpiShgZzcMlCPSkg7YLjh+9ruilsgC7IxjYQ3mpQ0DyRvi7T5UcVYPUNhOgifdsIZc5iLCPfinQBD5W6R8az6fH9F4hBzHDrSYRpPbWDbD6miMSNcJtIwOf+8UrNUQkCyGijoPmGmymGVZ4yDSAz+qriqQulHq0thVjsb/+1zSK2Mpe7xlt5S3DNXSwNRad2GMXBoCBOHjuTVSnWJyHRTD2bgb4+HSFEeE+iSFfhpsXgKwywDaZoj3SDT83oVNGu5d/76L5CcS2ViBujKZUXBwL5SSO7A58lsxVRwmFkQuI03Q39oGOsKpZG4iwxXOZiAFn8JakR6DqFChUBgOwC1oEW/Kfifem+x+iHhHRFnfB8z2iKE6iBk2MukdY1pGSR2j472xzJSmbGGVUlyWmgggpHJzU08dEO6q6kDqYlD2zT0oomGergTSil+UOnPTgZC6MYB6VHFy7W7t2R69CFF54H9sQPNs+ceG4JzWi0itkOaZONB/9wXtG+MF7xgwhWr8AAAAAElFTkSuQmCC'



btcclp="$(curl -s 'https://www.buda.com/api/v2/markets/btc-clp/ticker.json')"
ethclp="$(curl -s 'https://www.buda.com/api/v2/markets/eth-clp/ticker.json')"
btcars="$(curl -s 'https://www.buda.com/api/v2/markets/btc-ars/ticker.json')"
ethars="$(curl -s 'https://www.buda.com/api/v2/markets/eth-ars/ticker.json')"
btcpen="$(curl -s 'https://www.buda.com/api/v2/markets/btc-pen/ticker.json')"
ethpen="$(curl -s 'https://www.buda.com/api/v2/markets/eth-pen/ticker.json')"


preprocess (){
  echo "$1"|
  egrep -o "\"$2\":\[\"([0-9]+\.?[0-9]+)\"" |
  sed "s/\"$2\":\[//" |
  sed 's/\"//g' |
  sed 's/\.[0-9]\{0,9\}//' |
  sed -e ': L
  s/\([0-9]\{1,19\}\)\([0-9]\{3\}\)/\1\.\2/
  t L' |
  sed -e "s/^/$3 $/"|
  sed -e "s/$/$4/"
}
btcclp_last_price() {
  preprocess "$btcclp" "last_price" "" ""
}
ethclp_last_price() {
  preprocess "$ethclp" "last_price" "" ""
}
btcars_last_price() {
  preprocess "$btcars" "last_price" "" ""
}
ethars_last_price() {
  preprocess "$ethars" "last_price" "" ""
}
btcpen_last_price() {
  preprocess "$btcpen" "last_price" "" ""
}
ethpen_last_price() {
  preprocess "$ethpen" "last_price" "" ""
}
echo "|image=$buda_icon"
echo "---"
echo "CLP $(btcclp_last_price) |size=14 image=$bitcoin_icon"
preprocess "$btcclp" "min_ask" "  ASK" "|size=11 color=green"
preprocess "$btcclp" "max_bid" "  BID" "|size=11 color=red"
preprocess "$btcclp" "volume" "24hr VOL" "|size=11 color=black"
echo "---"
echo "CLP $(ethclp_last_price) |size=14 image=$eth_icon"
preprocess "$ethclp" "min_ask" "  ASK" "|size=11 color=green"
preprocess "$ethclp" "max_bid" "  BID" "|size=11 color=red"
preprocess "$ethclp" "volume" "24hr VOL" "|size=11 color=black"
echo "---"
echo "ARS $(btcars_last_price) |size=14 image=$bitcoin_icon"
preprocess "$btcars" "min_ask" "  ASK" "|size=11 color=green"
preprocess "$btcars" "max_bid" "  BID" "|size=11 color=red"
preprocess "$btcars" "volume" "24hr VOL" "|size=11 color=black"
echo "---"
echo "ARS $(ethars_last_price) |size=14 image=$eth_icon"
preprocess "$ethars" "min_ask" "  ASK" "|size=11 color=green"
preprocess "$ethars" "max_bid" "  BID" "|size=11 color=red"
preprocess "$ethars" "volume" "24hr VOL" "|size=11 color=black"
echo "---"
echo "PEN $(btcpen_last_price) |size=14 image=$bitcoin_icon"
preprocess "$btcpen" "min_ask" "  ASK" "|size=11 color=green"
preprocess "$btcpen" "max_bid" "  BID" "|size=11 color=red"
preprocess "$btcpen" "volume" "24hr VOL" "|size=11 color=black"
echo "---"
echo "PEN $(ethpen_last_price) |size=14 image=$eth_icon"
preprocess "$ethpen" "min_ask" "  ASK" "|size=11 color=green"
preprocess "$ethpen" "max_bid" "  BID" "|size=11 color=red"
preprocess "$ethpen" "volume" "24hr VOL" "|size=11 color=black"
echo "---"
echo "buda.com | href=\"https://www.buda.com/\""
