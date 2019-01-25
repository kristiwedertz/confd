#!/bin/bash
FILE='./credentials'
echo '[default]' >> $FILE
echo 'aws_access_key_id = ' >> $FILE
echo 'aws_secret_access_key_id = '>> $FILE
echo 'region = ' >> $FILE
sed -i "/aws_access_key_id = / s/$/$AWS_ACCESS_KEY_ID/" $FILE
sed -i "/aws_secret_access_key_id = / s/$/$AWS_SECRET_ACCESS_KEY/" $FILE
sed -i "/region = / s/$/$AWS_REGION/" $FILE
mkdir ~/.aws/
mv ./credentials ~/.aws/credentials
