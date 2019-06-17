FactoryBot.define do

  factory :author do
    first_name {'Octavia'}
    last_name {'Butler'}
    middle_name {''}
    email {'test@gmail.com'}
    password {'cookies'}
    password_confirmation {'cookies'}
  end

  factory :book do
    title {'Bloodchild'}
    author_id {1}
  end

  factory :publisher do
    name {"Peguin Books"}
    city {"London"}
    year {"1999"}
    format {"Print"}
    book_id {1}
  end

end
