class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    # Subscription command:
    # {"command": "subscribe","identifier": "{\"channel\":\"NotificationsChannel\"}"}
    stream_from :notifications_channel
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end