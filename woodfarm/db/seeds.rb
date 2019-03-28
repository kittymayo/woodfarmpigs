#seed categories

categories = Category.create([
{ name: 'Sausages' },
{ name: 'Bacon and Ham' },
{ name: 'Joints' }])

puts "product categories seeded"

products = Product.create([
{ name: 'Original Breakfast', description: 'nice and breakfast-y', status: 'y',
  price: 475, category: categories[0] },
{ name: 'Rutland Porker', description: 'BBQ size and gluten free', status: 'y',
  price: 475, category: categories[0] },
{ name: 'Jalapeno Pepper', description: 'aromatic, with a kick', status: 'y',
  price: 475, category: categories[0] },
{ name: 'Rutland Piglet', description: 'cocktail size', status: 'y',
  price: 525, category: categories[0] },
{ name: 'Chipolatas', description: 'classic chipolata', status: 'y',
  price: 525, category: categories[0] },
{ name: 'Dry cured bacon', description: 'classic and great', status: 'y',
    price: 800, category: categories[1] },
{ name: 'Middle bacon', description: 'classic and great', status: 'y',
    price: 800, category: categories[1] },
{ name: 'Back bacon', description: 'classic and great', status: 'y',
    price: 800, category: categories[1] },
{ name: 'Dry cured bacon', description: 'classic and great', status: 'y',
    price: 800, category: categories[1] },
{ name: 'Ham', description: 'Home-cured', status: 'y',
  price: 1500, category: categories[1] },
{ name: 'Joints and chops', description: 'classic and great', status: 'y',
  price: 800, category: categories[2] } ])

puts "products seeded"
