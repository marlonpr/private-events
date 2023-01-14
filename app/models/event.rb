class Event < ApplicationRecord
  belongs_to :user, foreign_key: :user_id, class_name: 'Creator'
end