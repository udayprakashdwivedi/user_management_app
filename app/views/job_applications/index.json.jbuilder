# json.array! @applications, partial: 'job_applications/job_application', as: :application

json.job_applications @job_applications do |job|
    json.id job.id
    json.title job.title
    json.description job.description
    json.user do
      json.id job.user.id
      json.email job.user.email
    end
  end