def lambda_handler(event, context):
    print("Hello from Lambda")
    return "Success"

try:
    ...
except Exception as e:
    print(str(e))