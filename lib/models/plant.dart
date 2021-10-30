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
    size: 'Pequena',
    description:
    'Aloe vera é uma espécie de planta suculenta do gênero Aloe. Seus usos medicinais e capacidade de purificação do ar a tornam uma planta incrível.',
  ),
  Plant(
    imageUrl: 'assets/images/plant1.png',
    name: 'Cool Plant',
    category: 'Interior',
    price: 30,
    size: 'Médio',
    description:
    'c',
  ),
  Plant(
    imageUrl: 'assets/images/plant2.png',
    name: 'Really Cool Plant',
    category: 'Nova',
    price: 42,
    size: 'Grande',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur. Suspendisse vulputate faucibus est, a vehicula sem eleifend quis.',
  ),
];