class List < ApplicationRecord
  has_many :tasks

  def owner
    "me"
  end

end
