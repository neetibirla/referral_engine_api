class User < ActiveRecord::Base
  
  before_create :generate_code
  has_one :referred_by, class_name: 'User', foreign_key: 'referrer'
  validates_presence_of :email, :first_name, :last_name, :referral_code
  
  def generate_code(num_size = 6)
    numset = %w{0 1 2 3 4 5 6 7 9}
    begin
      result = (0...num_size).map { numset.to_a[rand(numset.size)] }.join
    end while User.where(:referral_code => result).exists?
    self.referral_code = result
  end

end
