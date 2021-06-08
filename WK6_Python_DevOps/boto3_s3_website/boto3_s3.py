import boto3
import json


s3 = boto3.client('s3')

# bucket_name needs to be unique
bucket_name = 'michaelsu.mooo.com'


def list_buckets():
    # List of existing buckets
    response = s3.list_buckets()
    for bucket in response['Buckets']:
        print('BucketName: {}'.format(bucket['Name']))


def create_bucket():
    # Create bucket
    s3.create_bucket(Bucket=bucket_name)


def update_bucket_policy():
    # Define public policy
    bucket_policy = {
        'Version': '2012-10-17',
        'Statement': [{
            'Sid': 'AddPerm',
            'Effect': 'Allow',
            'Principal': '*',
            'Action': ['s3:GetObject'],
            'Resource': "arn:aws:s3:::%s/*" % bucket_name
        }]
    }

    bucket_policy = json.dumps(bucket_policy)

    # update policy to the bucket
    s3.put_bucket_policy(Bucket=bucket_name, Policy=bucket_policy)


def enable_htmls():
    # Enable S3 to host static website
    s3.put_bucket_website(
        Bucket=bucket_name,
        WebsiteConfiguration={
            'ErrorDocument': {'Key': 'error.html'},
            'IndexDocument': {'Suffix': 'index.html'},
        }
    )


def upload_htmls():
    # Upload htmls to S3
    filename = ['index.html', 'error.html']
    for file in filename:
        data = open(file, "rb")
        s3.put_object(Body=data,
                      Bucket=bucket_name,
                      Key=file,
                      ContentType='text/html')


if __name__ == "__main__":
    list_buckets()
    create_bucket()
    update_bucket_policy()
    enable_htmls()
    upload_htmls()
