class Seed
  def self.start
    seed = Seed.new

  end

  def seed_categories
    Category.create!(name: "LISS")
    Category.create!(name: "HIIT")
    Category.create!(name: "Resistance-Arms")
    Category.create!(name: "Resistance-Legs")
    Category.create!(name: "Resistance-Full-Body")
  end
end

Seed.start
