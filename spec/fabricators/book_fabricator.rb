Fabricator(:book) do
  title { Faker::Book.title }
  year { (1900..2019).to_a.sample }
end

