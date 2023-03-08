CURRENTDATE=`date +"%Y%m%d%H%M%S"`
docker image build --platform linux/amd64 -t elecvery_logstash:0.1 -f ./Dockerfile .

aws ecr get-login-password --region ap-northeast-2 | sudo docker login --username AWS --password-stdin 676436960540.dkr.ecr.ap-northeast-2.amazonaws.com/elecvery_logstash
docker tag elecvery_logstash:0.1 676436960540.dkr.ecr.ap-northeast-2.amazonaws.com/elecvery_logstash:${CURRENTDATE}
docker push 676436960540.dkr.ecr.ap-northeast-2.amazonaws.com/elecvery_logstash:${CURRENTDATE}

docker tag elecvery_logstash:0.1 676436960540.dkr.ecr.ap-northeast-2.amazonaws.com/elecvery_logstash:latest
docker push 676436960540.dkr.ecr.ap-northeast-2.amazonaws.com/elecvery_logstash:latest