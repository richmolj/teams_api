Team.delete_all

(1..3).each do |department_id|
  [1,2,3].sample.times do
    Team.create! name: Faker::Team.name, department_id: department_id
  end
end