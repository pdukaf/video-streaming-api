FactoryBot.define do
	factory :episode do |f|
		f.title { Faker::Name.name }
		f.plot { 1 }
	end
end