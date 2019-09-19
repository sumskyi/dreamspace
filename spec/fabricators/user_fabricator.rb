Fabricator(:user) do
  email { Faker::Internet.email }
  password { Faker::Color.color_name }
end
