# devops-cli
It is a dummy tool for testing the upload to gofile.io. But hopefully we can publish it with real usage.

To know gofile: https://gofile.io/welcome

An example to use the tool:

```
$ devops-cli -i myfile.txt --verbose
2021-01-24 12:41:42,693 - INFO - start uploading file: myfile.txt to server: https://srv-store4.gofile.io
2021-01-24 12:41:42,695 - DEBUG - Starting new HTTPS connection (1): srv-store4.gofile.io:443
2021-01-24 12:41:44,911 - DEBUG - https://srv-store4.gofile.io:443 "POST /uploadFile HTTP/1.1" 200 137
2021-01-24 12:41:44,914 - DEBUG - This is the request url: https://srv-store4.gofile.io/uploadFile
2021-01-24 12:41:44,915 - DEBUG - This is the response status code: 200
2021-01-24 12:41:44,915 - DEBUG - This is the response header: {'Access-Control-Allow-Origin': '*', 'Content-Length': '137', 'Content-Type': 'application/json; charset=utf-8', 'Date': 'Sun, 24 Jan 2021 01:41:44 GMT', 'Etag': 'W/"89-mfbMaqrQAo1Bc2RL0aGmuM/fzys"', 'Strict-Transport-Security': 'max-age=31536000; includeSubDomains; preload', 'X-Content-Type-Options': 'nosniff', 'X-Frame-Options': 'DENY', 'X-Powered-By': 'Express', 'X-Xss-Protection': '1; mode=block'}
2021-01-24 12:41:44,915 - DEBUG - This is the response content b'{"status":"ok","data":{"code":"YpMEDT","adminCode":"LGK4xqfNl6xByIoGk3bn","file":{"name":"myfile.txt","mimetype":"text/plain","size":0}}}' 
File Download Link: https://gofile.io/d/YpMEDT
2021-01-24 12:41:44,916 - INFO - The file download link is https://gofile.io/d/YpMEDT

```

# pre-requisite
Python 3

# IDE 

VS Code or IntelliJ etc


# Install

## pip

```
pip install .
```

## Editable install
```
pip install -e .
```