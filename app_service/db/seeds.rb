#one controlled user to use to login
User.create!(name:  "Zoid",
#the email below is linked to a gravatar
    email: "brandincurry@gmail.com",
    password:              "password123",
    password_confirmation: "password123",
    ImageUploads: 1337,
    admin: true)

#generate 99 users using fakers name generation
99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@example.com"
    password = "password"
    uploads = rand(1000)
    User.create!(name:  name,
        email: email,
        password:              password,
        password_confirmation: password, 
        ImageUploads: uploads)
end