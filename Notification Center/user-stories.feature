Feature: Notification Center
    In order to centralise communication with Trellis users through notifications
    As Trellis
    I want to be able to define events that trigger notifications
    And their corresponding means of notifying users

    Scenario: Admin approve a Talent registration
        Given Approval requires notifying the Talent by an email and a push notification
        When The Admin approve the Talent's registration
        Then A request should be sent to the Api
        And The Talent should receive an email and a push notification communicating approval

    Scenario: A Talent registers
        Given Registration requires notifying the Talent by email
        When The Talent register
        Then A request should be sent to the Api
        And The Talent should receive an email communicating registration
