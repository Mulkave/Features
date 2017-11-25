```feature
Feature: Serve coffee
    In order to stay awake
    As a human being
    I want to be served some coffee

    Scenario: Buy coffee
        Given there is a human being standing at the counter
        When they ask for a coffee
        Then Teller receives payment
        And Teller starts brewing coffee
        And teller hands coffee when it's done
```
