class Signup
  include Virtus
  
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  
  attr_accessor :name, :email, :password, :password_confirmation
  
  validates_presence_of :name, :email, :password, :password_confirmation
  validates_confirmation_of :password
  
  def persisted?
    false
  end
  
  def save
    if valid?
      persist!
      true
    else
      false
    end
  end
  
  private
  
  def persist!
    parent = Parent.create!(name: name, email: email, password: password)
  end
end
