docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID kushparsai03/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID kushparsai03/$JOB_NAME:latest

docker push kushparsai03/$JOB_NAME:$BUILD_ID

docker push kushparsai03/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID kushparsai03/$JOB_NAME:$BUILD_ID kushparsai03/$JOB_NAME:latest
