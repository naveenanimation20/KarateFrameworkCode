Feature: GET API feature

Scenario: get user details
* print tokenID
Given header Authorization = 'Bearer '+ tokenID
Given url baseUrl+'/public/v1/users'
And path '30'
When method GET
Then status 200