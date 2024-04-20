# functions-from-zero

### To Call Microservice

something like this
'''bash
curl -X 'POST' \
  'https://ideal-parakeet-r449rjppvpr4fwxj4-8080.app.github.dev/wiki' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "name": "Microsoft"
}'
'''

### Build Container

'docker build'
'docker image ls'

## Run container

'docker run -p 127.0.0.1:8080:8080 IMAGE ID'

## sometime it needs to kill previous running server
'ps -ef | grep python'

## invoke POST request

run 'invoke.sh'