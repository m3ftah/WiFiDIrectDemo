Feature: File sharing feature

  Scenario: 1- Simple image sharing - Receiving
	Given I activate WiFi Direct
	Given I wait up to 60 seconds for "Available" to appear
	Given I don't see the text "Disconnect"
	When I take a screenshot
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
	Then I take a screenshot
	Then I wait for 5 seconds
	Then I take a screenshot

  Scenario: 2- Transferring image from Group Owner
	Given I activate WiFi Direct
	Then I wait up to 60 seconds for "Available" to appear
	Then I don't see the text "Disconnect"
	When I take a screenshot
	Then I wait for 10 seconds
	Then I press the menu key
	Then I press the text view "Discover"
	Then I should see "finding peers"

	Then I wait up to 60 seconds for "CHOOSE FILE" to appear
	Then I press the "CHOOSE FILE" button
	Then I take a screenshot
	Then I tap in 150 200
	Then I tap in 150 200
	Then I wait up to 60 seconds for "File sent" to appear	

  Scenario: 3- Deactivating WiFi P2p before file transfer
	Given I deactivate WiFi Direct
	When I take a screenshot
	Then I wait for 5 seconds
	Then I press the menu key
	When I press the text view "Discover"
	Then I should see "Enable P2p from action bar"

  Scenario: 4- Transfer a file instead of image - Receiving
	Given I activate WiFi Direct
	Given I wait up to 60 seconds for "Available" to appear
	Given I don't see the text "Disconnect"
	When I take a screenshot
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
	Then I take a screenshot
	Then I wait for 5 seconds
	Then I take a screenshot
	Then I wait up to 60 seconds for "Choose a program" to appear
#Receiving a second file
	Then I wait up to 60 seconds for "CHOOSE FILE" to appear
	Then I take a screenshot
	Then I wait for 5 seconds
	Then I take a screenshot

  Scenario: 6- Disconnect the second peer before starting the file transfer - Receiving
	Given I activate WiFi Direct
	Given I wait up to 60 seconds for "Available" to appear
	Given I don't see the text "Disconnect"
	When I take a screenshot
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
	Then I press the "Disconnect" button
	Then I take a screenshot
	Then I wait for 5 seconds
	Then I take a screenshot

  Scenario: 7- Connecting to peer without launching discover request on it - Receiving
	Given I activate WiFi Direct
	Given I wait up to 60 seconds for "Available" to appear
	Given I don't see the text "Disconnect"
	When I take a screenshot
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
	Then I take a screenshot
	Then I wait for 5 seconds
	Then I take a screenshot


