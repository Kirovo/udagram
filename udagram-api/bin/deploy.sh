eb init
eb use Finalapp-env
eb set POSTGRES_USERNAME=$POSTGRES_USERNAME
eb set POSTGRES_HOST=$POSTGRES_HOST
eb set POSTGRES_PASSWORD=$POSTGRES_PASSWORD
eb set POSTGRES_DB=$POSTGRES_DB
eb set PORT=$PORT
eb set AWS_REGIONT=$AWS_REGION
eb set AWS_PROFILE=$AWS_PROFILE
eb set AWS_BUCKET=$AWS_BUCKET
eb set JWT_SECRET=$JWT_SECRET
eb deploy