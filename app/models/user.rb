class User < ActiveRecord::Base
  #HOST
  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings

  #GUEST
  has_many :reservations, :foreign_key => "guest_id"

  has_many :reviews, through: :reservations

  def trips
    Reservation.all
  end

end
