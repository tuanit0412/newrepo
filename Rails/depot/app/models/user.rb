
class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  # ma hoa password
  has_secure_password
  private
  def ensure_an_admin_remains
    if User.count.zero?
      raise Error.new "Can't delete last user"
    end
  end
end
