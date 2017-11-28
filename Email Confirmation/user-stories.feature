Feature: Email Confirmation
    In order to guarantee a Talent's ownership of their email address
    As a Talent
    I want to be able to confirm my email

    Scenario: New Registration
        Given I open the app for the first time
        When I complete the registration process
        Then app redirects me to the pending screen
        And informs me that an approval process is taking place
        And that the admins of Trellis have been notified to take action
        And a registration confirmation email was sent
        And the email requires a confirmation action

    Scenario: Approved Registration Change Email Request
        Given I have an approved Talent account
        And that I am logged in (have an active session)
        When I open the Settings -> Security -> Change Email section in the mobile app
        And I enter my new email address
        And my current password
        And I request to change my email
        Then I should received a new "email confirmation" email
