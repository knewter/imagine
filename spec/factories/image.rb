FactoryGirl.define do
  factory :image, :class => 'Imagine::Image' do
    association :album
  end
end
