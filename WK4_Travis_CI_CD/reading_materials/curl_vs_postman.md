# Curl
## What is Curl?
Curl is a command-line tool for transferring data specified with URL syntax.

## Other characteristics?
* Curl is used in command lines or scripts to transfer data.
* Curl is free and open source

* Curl supports... DICT, FILE, FTP, FTPS, GOPHER, GOPHERS, HTTP, HTTPS, IMAP, IMAPS, LDAP, LDAPS, MQTT, POP3, POP3S, RTMP, RTMPS, RTSP, SCP, SFTP, SMB, SMBS, SMTP, SMTPS, TELNET and TFTP. curl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading, HTTP form based upload, proxies, HTTP/2, HTTP/3, cookies, user+password authentication (Basic, Plain, Digest, CRAM-MD5, NTLM, Negotiate and Kerberos), file transfer resume, proxy tunneling and more.



## Example
### GET the web content
```
curl https://www.keycdn.com
```
### Returning only HTTP headers
```
curl -I https://www.keycdn.com
```
### Get categories from Zomato API https://developers.zomato.com/
```
curl -X GET --header "Accept: application/json" --header "user-key: <api-key>" "https://developers.zomato.com/api/v2.1/categories"
```
### Output the above with a json format
Note that you may need to install `jq` first
```
curl -X GET --header "Accept: application/json" --header "user-key: <replace with your user-key>" "https://developers.zomato.com/api/v2.1/categories" | jq '.'
```

### Homework:
Run `python src/api_demo/app.py` first?

Could you use Curl to login to the app?

How would it be different from a Curl GET command?

Are the status code expected? 


# Postman
* The Collaboration Platform for API Development


### Instruction:
1. Please download and install postman https://www.postman.com/downloads/

2. Import `Zomato.postman_collection.json`

3. Create your own environment with the variable user-key and init value to be the api-key that you generated from https://developers.zomato.com/api
   ![Alt text](../images/env.png?raw=true)
4. Play around with each request by opening each of them and hitting the send button

5. Modify some fields and retry

6. Check out what does the runner do? What type of test is this?
![Alt text](../images/end2end.png?raw=true)
   
### Homework:
Okay, postman is more intuitive with the UI, so that I can build the API collections easily and use it to test end-to-end.
However, if there are a large amount of API collections, we need some automations. Converting these collections to Curl 
is too time-consuming, so what other tools can you think of to automate the testing process? Hint: Postman Newman

Could you use the tool that you picked to help write an automated test to verify the total number of restaurants near
your place is correct?

