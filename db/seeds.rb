# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end




# puts "Cleaning up database..."

# Skills.destroy_all
# Experiences.destroy_all
# Companise.destroy_all
# Jobs.destroy_all
# Applications.destroy_all
# Resumes.destroy_all
# User.destroy_all

# puts "Database cleaned"



user = User.create(
    user_type: "true", 
    first_name: "Lewis", 
    middle_name: "John", 
    last_name: "Smith", 
    username: "lewis", 
    email: "lewis@gmail.com",
    age: 25, 
    phone_number: 123456789, 
    biography: "I am a software developer at smart puppy", 
    industry: "IT", 
    location: "London", 
    education: "BSc", 
    join_date: "2022-01-01"
    )
    
    
    
skill = Skill.create(
    name: "Ruby", 
    user_id: user.id
    )




experience = Experience.create(
    title: "Software Developer",
    start_date: "2022-01-01",
    end_date: "2022-01-01",
    description: "I am a software developer at Google",
    location: "London",
    company_name: "Google", 
    user_id: user.id
    )

application = Application.create(
    status: "pending",
    cv_file: "cv.pdf",
    cover_letter: "I am a software developer at Google",
    user_id: user.id,
    job_id: job.id,
    resume_id: resume.id
    )



job = Job.create(
    job_title: "Software Developer at Google",
    job_description: "I am a software developer at Google",
    requirements: "software developer requirmenets at Google",
    location: "London",
    company_id: company.id
    )
    
    
    
    
company = Company.create(
    name: "Google",
    description: "I am a software developer at qoogle",
    email: "lewis@google.com",
    phone_number: 123456789,
    user_id: user.id
    )






    
















##############################################################################################################################

# user_type:
# first_name:
# middle_name:
# last_name:
# username:
# email:
# age:
# phone_number:
# biography:
# industry:
# location:
# education:
# join_date:

# user = User.create(user_type: "user", first_name: "Lewis", middle_name: "John", last_name: "Smith", username: "lewis", email: lewis@gmail.com, age: 25, phone_number: 123456789, biography: "I am a software developer", industry: "IT", location: "London", education: "BSc", join_date: "2022-01-01")


# skills
# name:
# user_id:



# skill = Skill.create(name: "Ruby", user_id: user.id)

# experience
# title:
# start_date:
# end_date:
# description:
# location:
# company_name:
# user_id:

# experience = Experience.create(title: "Software Developer", start_date: "2022-01-01", end_date: "2022-01-01", description: "I am a software developer", location: "London", company_name: "Google", user_id: user.id)

# application
# status:
# status
# cv_file
# cover_letter
# user_id:
# job_id:
# resume_id:

# application = Application.create(status: "pending", cv_file: "cv.pdf", cover_letter: "I am a software developer", user_id: user.id, job_id: job.id, resume_id: resume.id)

# jobs
# job_title:
# job_description:
# requirements:
# location:
# created_at:
# updated_at:
# company_id:

# job = Job.create(job_title: "Software Developer", job_description: "I am a software developer", requirements: "I am a software developer", location: "London", company_id: company.id)


# companies
# name:
# description:
# email:
# phone_number:
# user_id:

# company = Company.create(name: "Google", description: "I am a software developer", email: lewis@google.com, phone_number: 123456789, user_id: user.id)"


