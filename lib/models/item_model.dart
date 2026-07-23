class ItemModel {
  final String image;
  final String title;
  final String desc;
  final String price;

  ItemModel({
    required this.image,
    required this.title,
    required this.desc,
    required this.price,
  });

  static List<ItemModel> dummyList = [
    ItemModel(
      image: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e',
      title: 'Sony WH-1000XM4',
      desc: 'Electronics',
      price: '\$348.00',
    ),
    ItemModel(
      image: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30',
      title: 'Apple Watch Series',
      desc: 'Wearables',
      price: '\$399.00',
    ),
    ItemModel(
      image: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
      title: 'Nike Air Zoom',
      desc: 'Footwear',
      price: '\$120.00',
    ),
    ItemModel(
      image: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62',
      title: 'Leather Satchel',
      desc: 'Accessories',
      price: '\$150.00',
    ),
    ItemModel(
      image: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f',
      title: 'Ray-Ban Aviator',
      desc: 'Accessories',
      price: '\$150.00',
    ),
    ItemModel(
      image: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3',
      title: 'Keychron K2',
      desc: 'Electronics',
      price: '\$89.00',
    ),
    ItemModel(
      image: 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd',
      title: 'Minimalist Mug',
      desc: 'Home',
      price: '\$15.00',
    ),
    ItemModel(
      image: 'https://images.unsplash.com/photo-1507473885765-e6ed057f782c',
      title: 'LED Desk Lamp',
      desc: 'Home',
      price: '\$45.00',
    ),
  ];
}
