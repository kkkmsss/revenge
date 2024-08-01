class Like < ApplicationRecord
  belongs_to :clean
  belongs_to :user
  validates_uniqueness_of :clean_id, scope: :user_id
end
