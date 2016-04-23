class Provider < User
  include AASM
  default_scope { where(role: 'provider') }

  has_many :hotels
end
