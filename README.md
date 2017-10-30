# hubot-hubot-twilio-sms

Leverage Twilio to send SMS via Hubot

See [`src/hubot-twilio-sms.coffee`](src/hubot-twilio-sms.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-hubot-twilio-sms --save`

Then add **hubot-hubot-twilio-sms** to your `external-scripts.json`:

```json
[
  "hubot-hubot-twilio-sms"
]
```

## Sample Interaction

```
user1>> hubot send sms <phonenumber> <message>
hubot>> Ok, I've send an SMS to <phonenumber>!
```

## NPM Module

https://www.npmjs.com/package/hubot-hubot-twilio-sms
