class Student < ApplicationRecord
  belongs_to :class_group
  belongs_to :family
end
