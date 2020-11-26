Feature: validating 
	Scenario: validating reqres get request
	
	Given url 'https://reqres.in/api/users/2'
	When method GET
	Then status 200
	
	Given url 'https://reqres.in/api/users'
	And request { name: 'monta', job: 'leader'}
	When method POST
	Then status 201
	And  match response contains {name: 'monta'}
	And  match response contains {job: 'leader'}