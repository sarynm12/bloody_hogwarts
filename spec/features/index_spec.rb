require 'rails_helper'

RSpec.describe 'students show page.' do
  describe 'student info.' do
    it 'can list all students with their info.' do
      student1 = Student.create!(name: 'Casseopia Black', age: 14, house: "Slytherin")
      student2 = Student.create!(name: 'Harry Potter', age: 12, house: "Gryffindor")

      visit '/students'

      expect(page).to have_content('Casseopia Black')
      expect(page).to have_content(14)
      expect(page).to have_content('Slytherin')
      expect(page).to have_content('Harry Potter')
      expect(page).to have_content(12)
      expect(page).to have_content('Gryffindor')
    end
  end
end
