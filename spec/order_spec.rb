require 'order'

describe Order do

  subject(:order) { described_class.new }

  it 'add dish to @basket' do
    order.add_dish("Chicken", 1)
    expect(order.basket).to have_key("Chicken")
    expect(order.basket).to have_value(1)
  end

  it 'raises an error if dish not on the menu' do
    order.add_dish("Chicken", 1)
    expect{order.add_dish("Fish", 1)}.to raise_error "That dish is not on the menu"
  end

  it 'total of all dishes in @basket' do
    order.add_dish("Chicken", 1)
    order.add_dish("Beef", 1)
    order.add_dish("Veg", 1)
    expect(order.total).to eq(13.0)
  end

end
