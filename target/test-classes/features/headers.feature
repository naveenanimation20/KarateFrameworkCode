Feature: GET API headers feature

Scenario: pass the user request with headers_Part1
Given header Content-Type = 'text/xml;charset=ISO-8859-1'
And header Accept-Encoding = 'gzip,deflate'
And header Connection = 'Keep-Alive'
And header Expect = '100-continue'
And header User-Agent = 'Mozilla/4.0(compatible;IE;GACv7\. 1\. 5192\. 22378)'
And header Authorization = 'Bearer 007526d9efdbc07e084ff7a6d4cfcc90588fbe20641c00faebf45a7f3b2eaf33'

When url baseUrl+'/public/v1/users'
And path '30'
When method GET
Then status 200
* print response

Scenario: pass the user request with headers_Part2
* def request_headers = {Content-Type: 'text/xml;charset=ISO-8859-1', Connection: 'Keep-Alive', User-Agent: 'Mozilla/4.0(compatible;IE;GACv7\. 1\. 5192\. 22378)'}
Given headers request_headers
When url baseUrl+'/public/v1/users'
And path '30'
When method GET
Then status 200
* print response


Scenario: pass the user request with headers_Part3
* configure headers = {Content-Type: 'text/xml;charset=ISO-8859-1', Connection: 'Keep-Alive', User-Agent: 'Mozilla/4.0(compatible;IE;GACv7\. 1\. 5192\. 22378)'}
When url baseUrl+'/public/v1/users'
And path '30'
When method GET
Then status 200
* print response