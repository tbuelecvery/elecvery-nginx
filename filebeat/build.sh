CURRENTDATE=`date +"%Y%m%d%H%M%S"`
docker image build --platform linux/amd64 -t elecvery_filebeat:0.1 -f ./Dockerfile .

aws ecr get-login-password --region ap-northeast-2 | sudo docker login --username AWS --password-stdin 676436960540.dkr.ecr.ap-northeast-2.amazonaws.com/elecvery_filebeat
docker tag elecvery_filebeat:0.1 676436960540.dkr.ecr.ap-northeast-2.amazonaws.com/elecvery_filebeat:${CURRENTDATE}
docker push 676436960540.dkr.ecr.ap-northeast-2.amazonaws.com/elecvery_filebeat:${CURRENTDATE}

docker tag elecvery_filebeat:0.1 676436960540.dkr.ecr.ap-northeast-2.amazonaws.com/elecvery_filebeat:latest
docker push 676436960540.dkr.ecr.ap-northeast-2.amazonaws.com/elecvery_filebeat:latest