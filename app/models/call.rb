class Call
  def self.voice_message
    account_sid = ENV['TWILIO_SID']
    auth_token = ENV['TWILIO_TOKEN']

    client = Twilio::REST::Client.new(account_sid, auth_token)

    client.account.calls.create(
      from: ENV['TWILIO_CALL_FROM'],
      to:   ENV['TWILIO_CALL_TO'],
      url: ENV['TWILIO_XML_URL'],
      method: 'GET'
    )
  end
end
