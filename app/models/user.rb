class User < ApplicationRecord
  enum status: { draft: 0, public: 1, private: 2 }, _prefix: true
  validates :name, presence: true
  has_many :comments
end
