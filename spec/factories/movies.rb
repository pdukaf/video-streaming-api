FactoryBot.define do
	factory :movie do |f|
		f.title { Faker::Name.name }
		f.plot { 1 }
	end
end