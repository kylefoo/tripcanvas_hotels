class Provider < User
  default_scope { where(role: 'provider') }

  has_many :hotels

  include AASM
  
end
