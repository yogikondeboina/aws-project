import boto3

s3 = boto3.client('s3')

def lambda_handler(event, context):
    print("Lambda started")

    s3.put_object(
        Bucket='cricket-live-site-dev-logs',
        Key='output/test.json',
        Body='Hello from Lambda'
    )

    print("File written to output bucket")

    return {"status": "success"}