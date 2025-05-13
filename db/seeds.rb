# Create Roles
admin_role = Role.create!(name: 'Admin')
candidate_role = Role.create!(name: 'Candidate')

# Create Admin User
admin = User.create!(email: "admin@gmail.com", password: "password", password_confirmation: "password", role: admin_role)

# Create 2 Candidate Users
candidate1 = User.create!(email: "c1@gmail.com", password: "password", password_confirmation: "password", role: candidate_role)
candidate2 = User.create!(email: "c2@gmail.com", password: "password", password_confirmation: "password", role: candidate_role)

# Each Candidate with 2 Job Applications
2.times do |i|
  candidate1.job_applications.create!(title: "Job #{i+1}", description: "Description #{i+1}")
  candidate2.job_applications.create!(title: "Job #{i+3}", description: "Description #{i+3}")
end
