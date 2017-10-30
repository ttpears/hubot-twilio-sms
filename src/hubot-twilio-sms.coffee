# Description:
# Leverage Twilio to send SMS via Hubot 
#
# Dependencies:
#   "twilio": "^3.9.1"
#
# Configuration:
#   TWILIO_SID
#   TWILIO_TOKEN
#   TWILIO_SOURCEPHONENUMBER
#
# Commands:
#   hubot send sms <phonenumber> <message>
#
# Author:
#   ttpears

twAccountSID = process.env.TWILIO_SID
twAuthToken = process.env.TWILIO_TOKEN
twSendFromNum = process.env.TWILIO_SOURCEPHONENUMBER

# Leaving commented out until closer to done
# client = require('twilio')(twAccountSID, twAuthToken);

module.exports = (robot) ->
   robot.hear /send sms/i, (res) ->
      console.log res
      res.reply "Sure, what phone number did you want to send an SMS to?"
      # Mock the API call for now
      # client.messages.create({
      #  to: recipient,
      #  from: twSendFromNum
      #  body: msg,
      #  }, (err, errmsg) => 
      #     msg.reply errmsg.sid
      #  );

