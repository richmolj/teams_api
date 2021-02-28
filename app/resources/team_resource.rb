class TeamResource < ApplicationResource
  federated_type("Department").has_many :teams
  federated_belongs_to :department
  attribute :name, :string

  belongs_to :department, remote: "http://localhost:3002/api/v1/departments"
  attribute :department_id, :integer, only: [:readable, :filterable]
  has_many :tasks, remote: "http://localhost:3004/api/v1/tasks"
end
