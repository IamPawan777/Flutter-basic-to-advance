class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final procuts = [
  Item(id: "11111", name: 'iPhone 10 pro', desc: 'The latest generation phone', price: 9999, color: '#33505a', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1eCKNNerAzV297h0xGdKm6wJMv6ECt-rOQQ&s')
];