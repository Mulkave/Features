# Email Confirmation
Sending email confirmation

- [Requirements](#requirements)
- [User Stores](user-stories.feature)
- [Notes](#notes)
- [URL Schema](#url-schema)
- [Diagrams](#diagrams)
    - [Activity](#activity-diagram)
    - [Backend](#backend)
    - [Mobile](#mobile)
    - [Web](#web)

## Requirements
- Any email address set in Trellis should be confirmed by its owner.
- Confirming an email address is required, but done asynchronously, meaning it does not block the usage of the correspondent Trellis account withing a grace period.
- The logic of calculating the confirmation grace period is set to be done on the backend, to avoid depending on the devices' time, and reading the permitted duration from a remote configuration.
- User can confirm his email whatever his registration status is.
- User can request another confirmation email.
- User can request to change his email even if the current one is not yet confirmed.
- Changing the email and confirming it does not affect the active sessions.
- The grace period can only be reset once on first email change

## Notes
- Checking the email availability with approved talents accounts will include the newly set email, even if not confirmed yet. This is the case by default since it was already replaced in the talent object.
- Clients should expect a signed integer property in the Talent object when the email is not confirmed. Positive value means grace period still valid, negative value mean grace period overdue. The integer is a time difference in seconds that needs to be displayed as days, hours, minutes

## URL Schema
### Email Confirmation
The URL in the email template will look as follows:
-  `http://security.trellis.tv/confirm/email?token=fd32dxTgfthShSRYarjnsu45y6dtyjmdt`
> The token will be used to identify and confirm the corresponding Talent account

### Redirect
#### Success
- `https://dev-trellis-v1.s3-website.eu-central-1.amazonaws.com/confirmation/success`

#### Failure
- `https://dev-trellis-v1.s3-website.eu-central-1.amazonaws.com/confirmation/failed`

## Diagrams

### Activity Diagram
![Activity Diagram](https://s3-eu-west-1.amazonaws.com/tw-eu-inline/411870/0/0/170a35c7d6cd16ed5d616c5975b895c5.png)

### Backend

#### Sequence Diagrams

##### Talent
###### Change Email
![Talent - Change Email](https://s3-eu-west-1.amazonaws.com/tw-eu-inline/411870/0/0/f070e8b8ec54dc7b5cd53a2ed5459ba5.png)

###### Registration
![Talent - Registration](https://s3-eu-west-1.amazonaws.com/tw-eu-inline/411870/0/0/ed1c4123ec894e087879bb2819484516.png)

##### Admin
###### Change Email
![Admin - Change Email](https://s3-eu-west-1.amazonaws.com/tw-eu-inline/411870/0/0/f2a3b1facd2d42fe567de6a66c51244d.png)

### Mobile
#### Workflow
![Mobile - Workflow](https://s3-eu-west-1.amazonaws.com/tw-eu-inline/411870/0/0/107cecd1d41945af09cb496b0e36d65d.png)

### Web
#### Dataflow
![Web Data Flow](https://s3-eu-west-1.amazonaws.com/tw-eu-inline/411870/0/0/0f97c8e0c99a3dc4d680f9464f273e5a.png)

