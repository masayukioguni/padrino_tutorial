require 'net/http'
Net::HTTP.version_1_2
http = Net::HTTP.new('127.0.0.1', 3000)
response = http.post( '/posts/create', 'title=hoge&body=hogehoge' )
p response.body
