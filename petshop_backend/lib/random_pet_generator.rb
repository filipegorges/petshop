module RandomPetGenerator
  
  def generate_random_dog
    {
      name: random_name(),
      breed: random_breed(),
      gender: random_gender(),
      castrated: random_castration(),
      birth_date: random_date(),
      owner_name: random_name(),
      owner_phone_number: random_phone_number(),
      last_visited: random_date()
    }
  end

  private

  def random_breed
    collect_breeds.sample
  end

  def collect_breeds
    File.readlines('./lib/breeds.txt')
  end

  def random_gender
    ["Macho", "Fêmea"].sample
  end

  def random_castration
    ["Sim", "Não"].sample
  end

  def random_date
    Faker::Date.birthday(1, 20)
  end

  def random_name
    Faker::Name.first_name
  end

  def random_phone_number
    Faker::PhoneNumber.cell_phone
  end

end