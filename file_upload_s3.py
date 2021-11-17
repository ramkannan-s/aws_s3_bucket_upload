import boto3
import sys
import argparse
from datetime import datetime

#Creating Session With Boto3.
session = boto3.Session(
aws_access_key_id='AKIAIJXKEOUG65DAOASQ',
aws_secret_access_key='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'
)

parser = argparse.ArgumentParser()
parser.add_argument("-e", "--env", help="enter ENV Name")
results = parser.parse_args()
env = results.env

print("Environment Name = %s" % env)

now = datetime.now()
dt_string = now.strftime("%d-%m-%Y_%H:%M:%S")
print("current date and time ==> ", dt_string)

#Creating S3 Resource From the Session.
s3 = session.resource('s3')

object = s3.Object(env+'-ramkannan-s-platform-challenge', 'zenjobfile_'+dt_string+'.txt')

result = object.put(Body=open('zenjob_file.txt', 'rb'))

res = result.get('ResponseMetadata')

if res.get('HTTPStatusCode') == 200:
    print('File Uploaded Successfully')
else:
    print('File Not Uploaded')