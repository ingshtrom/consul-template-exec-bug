# test locally on MAC OSX
```
DIR=$(pwd) consul-template -template "in.tpl:out.txt" -template "in2.tpl:out2.txt" -exec "$(pwd)/test.sh" -log-level=trace
```

# test with docker
```
docker image build -t test .
docker container run -e DIR=$(pwd) test
```

# What I'm seeing
The templates are not actually rendered prior to exec being run when this is run inside of Docker alpine-based image

