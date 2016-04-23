class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend Enumerize
  enumerize :role, in: [:user, :admin, :provider], predicates: true, default: :user

  extend FriendlyId
  friendly_id :firstname, use: [:slugged, :finders]
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      :firstname,
      [:firstname, :lastname],
      [:firstname, :lastname, :id]
    ]
  end

end
