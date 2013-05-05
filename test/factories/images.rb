# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
   factory :image do
      title "Test Image"
      description "A super cool image"
      url "http://www.flickr.com/photos/swedish_heritage_board/4303836670/"
   end
end
