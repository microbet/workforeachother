class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
  after_initialize :set_balance, :if => :new_record?
  after_create :make_deposit


  def set_default_role
    self.role ||= :user
  end

  def set_balance
    self.balance = -1
  end

  def make_deposit
    deposit_params = { "amount"=>-1, "user_id"=>self.id }
    @deposit = Deposit.new(deposit_params)
    @deposit.save 
    puts "dep param is "
    puts deposit_params
    puts "dep is "
    puts @deposit
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
