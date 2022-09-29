class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iphone 14 Pro",
        desc: "iphone 14 generation",
        price: 400000,
        color: "#33505a",
        image: "https://images.hindustantimes.com/tech/img/2022/08/20/original/Untitled_design_-_2022-08-20T143510.743_1660986921934.png")
  ];
}


class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}



