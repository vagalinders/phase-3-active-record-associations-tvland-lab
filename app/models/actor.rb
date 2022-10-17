class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def full_name
    "#{first_name} #{last_name}"
  end
  def shows
    self.show_id.all.each do |show|
      show
      end
  end
  def list_roles
    "#{self.character.name} - #{self.show.name}"
  end
end