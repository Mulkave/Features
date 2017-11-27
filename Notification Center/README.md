# Feature: Notification Center
- [Requirements](#requirements)
- [User Stories](user-stories.feature)
- [Diagrams](#diagrams)
- [Technical Notes](#technical-notes)
- [Notification Center Service Features](#ncs-features)

## Requirements
- Handle all Trellis' communications, such as email and push notifications
- Support addition of new communication channels
- Should be flexible to send notifications through one or multiple communication channels based on rules bound to the communication subject. As an example, business could require to send an email and a push notification to a User on registration
- The definition of these rules should be configurable. Following the example given earlier, changes in business requirements could require to send a web push notification instead when a User is registered
- Should be scalable

## NCS Features
- Send Push Notification
- List Push Notification types
- Send Reset Password email
- Send Email Confirmation email
- Send Talent Registration email

## Technical Notes
- Consider using RabbitMq for sending notifications to the leaf services, such as the Mailer and Push Notification services.
- Consider using SparkPost Transmissions to send an email for a list of Talents, sending individual emails.

## Diagrams

### Sequence

#### Send Registration Email
![Send Registration Email](https://s3-eu-west-1.amazonaws.com/tw-eu-inline/411870/0/0/5afca91a02dd40af3e7c9f17efe43279.png)

#### Send Registration Approval Notification
![send registration approved email](https://s3-eu-west-1.amazonaws.com/tw-eu-inline/411870/0/0/5afca91a02dd40af3e7c9f17efe43279.png)
