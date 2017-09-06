Feature: File sharing feature

  Scenario: 1- Simple image sharing - Sending
	Given I activate WiFi Direct
	Given I wait up to 60 seconds for "Available" to appear
	Given I don't see the text "Disconnect"
	When I take an image
	Then I wait for 10 seconds
	Then I press the menu key
	Then I press the text view "Discover"
	When I should see "finding peers"
	
	Then I wait up to 60 seconds for "N192168491" to appear
	Then I touch the "N192168491" text
	Then I wait for the "Connect" button to appear
	Then I press the "Connect" button
	Then I should see "Connecting to"
	Then I wait up to 60 seconds for "CHOOSE FILE" to appear
	Then I press the "CHOOSE FILE" button
	Then I take a screenshot
	Then I tap in 150 200
	Then I tap in 150 200
	Then I wait up to 60 seconds for "File sent" to appear
	Then I wait for 5 seconds
	Then I take a screenshot


