class Group < ActiveRecord::Base
  belongs_to :parent, class_name: "Group", foreign_key: "parent_id"

  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates_length_of :name, :maximum => 255

end
