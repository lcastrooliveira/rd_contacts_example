FactoryGirl.define do
  factory :contact do
    email 'interested_user@gmail.com'
    ip '198.897.987.1'
    urls pages: [{ url: '/sobre.html', timestamp: '2017-06-16T12:18:01.517Z'} ]
  end
end
