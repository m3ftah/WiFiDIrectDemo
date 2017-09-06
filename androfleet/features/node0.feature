Feature: File sharing feature

  Scenario: 1- Simple image sharing - Receiving
	Given I activate WiFi Direct
	Then I wait up to 60 seconds for "Available" to appear
	Then I don't see the text "Disconnect"
	Then I wait for 5 seconds
	Then I press the menu key
	Then I press the text view "Discover"
	Then I should see "finding peers"

	Then I wait up to 60 seconds for "CHOOSE FILE" to appear
	Then I wait for 60 seconds
	Then I take a screenshot

