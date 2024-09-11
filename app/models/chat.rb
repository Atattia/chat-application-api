class Chat < ApplicationRecord
  validates :number, presence: true, numericality: { only_integer: true }
  validates :messages_count, numericality: { only_integer: true }
  validates :lock_version, numericality: { only_integer: true }

  validates_associated :application

  belongs_to :application
  has_many :messages, dependent: :destroy


  def self.create_chat(token)
    application = Application.find_by(token: token)
    return unless application

    last_chat_num = application.chats&.last&.number || 0
    chat_num = last_chat_num + 1

    CreateChatWorker.perform_async(token, chat_num)
    { "number": chat_num }
  end

  def self.get_all(token)
    Application.find_by(token: token)&.chats&.all&.as_json(except: [ :id, :application_id, :lock_version ])
  end

  def self.get_by_number(app_token, chat_number)
    Application.find_by(token: app_token)&.chats&.find_by(number: chat_number)&.as_json(except: [ :id, :application_id, :lock_version ])
  end
end
