# server.coffee

http = require 'http'
fs = require 'fs'

port = 3000
ip = '127.0.0.1'

server = http.createServer (req, res) ->
  res.writeHead 200, {
    'Content-Type': 'text/html'
    'Access-Control-Allow-Origin': '*'
  }
  rs = fs.createReadStream __dirname + '/index.html'
  rs.pipe(res)

server.listen port, ip
console.log "Server running at http://#{ip}:#{port}"
