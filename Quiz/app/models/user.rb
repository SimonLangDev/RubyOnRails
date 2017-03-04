class User < ApplicationRecord
  validates :email, :confirmation => true, :length => {
      :minimum   => 10,
      :maximum   => 255,
      :too_short => "must have at least %{count} words",
      :too_long  => "must have at most %{count} words"
  }
end
