require 'csv'

class Seed
  def self.start
    seed = Seed.new
    seed.categories
    seed.exercises
  end

  def categories
    puts "creating categories!"
    Category.create!(name: "LISS")
    Category.create!(name: "HIIT")
    Category.create!(name: "Resistance-Arms")
    Category.create!(name: "Resistance-Legs")
    Category.create!(name: "Resistance-Abs")
    Category.create!(name: "Resistance-Full-Body")
    puts "Done creating categories"
  end

  def exercises
    puts "creating exercises"
    CSV.foreach('db/exercises.csv', headers: true) do |row|
      Exercise.create!(name: row["name"], max_weight: 0, category_id: row["category"].to_i)
    end
    puts "all exercises in db"
  end
end

Seed.start
