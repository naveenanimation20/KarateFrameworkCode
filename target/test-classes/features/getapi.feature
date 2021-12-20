Feature: GET API feature

Scenario: get user details
Given url baseUrl+'/public/v1/users'
And path '30'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actName = jsonResponse.data.name
* def actId = jsonResponse.data.id
* def actEmail = jsonResponse.data.email
* print actName
* match actName == 'Ainath'
* match actId == 30
* match actEmail == 'ainath@gmail.com'


Scenario: get user details - user not found
Given url baseUrl+'/public/v1/users'
And path '1'
When method GET
Then status 404