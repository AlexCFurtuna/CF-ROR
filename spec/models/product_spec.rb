require 'rails_helper'
describe Product do
  let:(product) {Product.create!(name: "race bike") }
end
