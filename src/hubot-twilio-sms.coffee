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
   robot.hear /send sms (.*)/i, (res) ->
      pattern = ///
         ^\(?(\d{3})\)? # Capture area code, ignore optional parens
         [-\s]?(\d{3})  # Capture prefix, ignore optional dash or space
         -?(\d{4})      # Capture line-number, ignore optional dash
      ///
      console.log res
      recipient = res.match[1]
      res.reply "Ok, I see you want to send a SMS message to: " +
         recipient.match(pattern)[1] +
         recipient.match(pattern)[2] +
         recipient.match(pattern)[3] +
         ", right?"
      # Mock the API call for now
      # client.messages.create({
      #  to: recipient,
      #  from: twSendFromNum
      #  body: msg,
      #  }, (err, errmsg) => 
      #     msg.reply errmsg.sid
      #  );
