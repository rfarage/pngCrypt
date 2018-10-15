cd app_service
start cmd /k rails s
cd ../
cd crypt_service
start cmd /k node app
start cmd /k cd ../app_service
