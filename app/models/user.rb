class User < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, confirmation: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  before_save :downcase_email

  has_secure_password

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email((email.strip).downcase)
    if user && user.authenticate(password)
      user
    end
  end

  def downcase_email
    self.email.downcase!
  end

end
