# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(name)
<<<<<<< HEAD
    if name == ''
      Student.all
    else
      find_students(name)
    end
  end

  def self.find_students(name)
    Student.all.select {|s| s.name.downcase.include?(name)}
=======

>>>>>>> 489d5a02374e1ce10f77d80cfb8fb41a001eda07
  end
end
