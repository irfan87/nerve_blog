require 'rails_helper'
FactoryGirl.define do
  factory :post do
    post_title {Faker::Lorem.sentence}
    post_body {Faker::Lorem.paragraph(1)}
  end
end
