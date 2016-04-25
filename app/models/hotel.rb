class Hotel < ActiveRecord::Base
  belongs_to :provider

  # aasm do
  #   state :pending, initial: true
  #   state :approved
  #   state :declined
    
  #   event :approve, after: :approval_email do
  #     transitions from: [:pending, :declined], to: :approved
  #   end

  #   event :decline, after: :declination_email do
  #     transitions from: [:pending, :approved], to: :declined
  #   end
  # end

  # def approval_email
  # end

  # def declination_email
  # end
end
