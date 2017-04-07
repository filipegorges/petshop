10.times do |pet|
  Dog.create!(
    breed: "Akita Inu",
    gender: "Fêmea",
    castrated: "Não",
    birth_date: Date.today,
    name: "Bolinha",
    owner_name: "João",
    owner_phone_number: "(51) 99989-0899",
    last_visited: Date.yesterday,
    image_url: "http://www.101dogbreeds.com/wp-content/uploads/2014/12/Akita-Inu-Pictures.jpg"
  )
end
