#encoding: utf-8

require './models/party'
require './models/food'
require './models/party_order'
require './models/table'
require './models/waiter'

8.times {Table.create()}

3.times {Waiter.create({name: Faker::Name.name})}

Party.create({table_id: 3, waiter_id: Waiter.all.sample.id, size: 4})
Party.create({table_id: 2, waiter_id: Waiter.all.sample.id, size: 2})
Party.create({table_id: 6, waiter_id: Waiter.all.sample.id, size: 1})
Party.create({table_id: 8, waiter_id: Waiter.all.sample.id, size: 3})
Party.create({table_id: 4, waiter_id: Waiter.all.sample.id, size: 4})

Food.create({name: 'Plain Pizza', price: 4, course: 'pizza', description: 'A plain flatbread pizza. A longtime staple of not-Chinese meals.'})
Food.create({name: 'Martini', price: 9, course: 'beverage', description: 'Cocktail made with gin and vermouth. Once referred to as "the only American invention as perfect as the sonnet," this is invariably an un-Chinese drink.'})
Food.create({name: 'Assorted Soda', price: 1.50, course: 'beverage', description: 'I WENT ON A DIET FOR TWO WEEKS AND ALL I LOST WAS FOURTEEN DAYS'})
Food.create({name: 'Angus Burger', price: 12, course: 'sandwich', description: 'A hamburger made from Angus cattle––none of which (to our knowledge) are, or ever have been, Chinese.'})
Food.create({name: 'Apple Pie', price: 4, course: 'dessert', description: 'A longtime American favorite.'})
Food.create({name: 'Tiramisu', price: 6, course: 'dessert', description: 'You want this.'})
Food.create({name: 'French Fries', price: 3, course: 'side', description: 'Its culinary origin is sometimes debated, but experts generally agree: it\'s not Chinese.'})
Food.create({name: 'Pepperoni Pizza', price: 4.50, course: 'pizza', description: 'Like the plain pizza, but with salami. Definitely not Chinese.'})
Food.create({name: 'Sausage Pizza', price: 4.50, course: 'pizza', description: 'Perhaps the pinnacle of Italian (aka not Chinese) science, space, and technology.'})
Food.create({name: 'Turkey Sandwich', price: 7.25, course: 'sandwich', description: 'Bread with turkey slices, as well as some other delicious, not Chinese stuff.'})

Food.create({name: 'Fried Calamari', price: 6.25, course: 'side', description: 'Calamari is Italian for squid.'})




PartyOrder.create({party_id: 1, food_id: Food.all.sample.id})
PartyOrder.create({party_id: 1, food_id: Food.all.sample.id})
PartyOrder.create({party_id: 1, food_id: Food.all.sample.id})
PartyOrder.create({party_id: 1, food_id: Food.all.sample.id})

PartyOrder.create({party_id: 2, food_id: Food.all.sample.id})
PartyOrder.create({party_id: 2, food_id: Food.all.sample.id})

PartyOrder.create({party_id: 3, food_id: Food.all.sample.id})
PartyOrder.create({party_id: 3, food_id: Food.all.sample.id})

PartyOrder.create({party_id: 4, food_id: Food.all.sample.id})
PartyOrder.create({party_id: 4, food_id: Food.all.sample.id})
PartyOrder.create({party_id: 4, food_id: Food.all.sample.id})

PartyOrder.create({party_id: 5, food_id: Food.all.sample.id})
PartyOrder.create({party_id: 5, food_id: Food.all.sample.id})
PartyOrder.create({party_id: 5, food_id: Food.all.sample.id})
