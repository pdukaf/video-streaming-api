FactoryBot.define do
	factory :season do |f|
		f.title { Faker::Name.name }
		f.plot { 1 }
		f.number { 1 }
	end
end