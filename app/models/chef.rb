class Chef < ApplicationRecord

  before_save  {self.email = self.email.downcase}

  validates :chefname , presence: true, length: {maximum: 30}
  validates :email , presence: true, length: {maximum: 200}
  
  VALID_EMAIL_REGEX  = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email , presence: true, format: {with: VALID_EMAIL_REGEX},
           uniqueness: {case_sensitive: false}
  
end
