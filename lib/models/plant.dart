class Plant {
  final String imageUrl;
  final String name;
  final String category;
  final int price;
  final String size;
  final String description;

  Plant({
    required this.imageUrl,
    required this.name,
    required this.category,
    required this.price,
    required this.size,
    required this.description,
  });
}

final List<Plant> plants = [
  Plant(
    imageUrl: 'assets/images/plant0.png',
    name: 'Aloe Vera',
    category: 'Exterior',
    price: 25,
    size: 'Small',
    description:
    'Aloe vera é uma espécie de planta suculenta do gênero Aloe. Seus usos medicinais e capacidade de purificação do ar a tornam uma planta incrível.',
  ),
  Plant(
    imageUrl: 'assets/images/plant1.png',
    name: 'Cool Plant',
    category: 'Indoor',
    price: 30,
    size: 'Medium',
    description:
    'c',
  ),
  Plant(
    imageUrl: 'assets/images/plant2.png',
    name: 'Really Cool Plant',
    category: 'New Arrival',
    price: 42,
    size: 'Large',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur. Suspendisse vulputate faucibus est, a vehicula sem eleifend quis.',
  ),
];