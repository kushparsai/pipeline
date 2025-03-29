docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID vaibhavjoshi26/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID vaibhavjoshi26/$JOB_NAME:latest

docker push vaibhavjoshi26/$JOB_NAME:$BUILD_ID

docker push vaibhavjoshi26/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID vaibhavjoshi26/$JOB_NAME:$BUILD_ID vaibhavjoshi26/$JOB_NAME:latest
