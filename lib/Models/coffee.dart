class coffee {
  String? name;
  String? image;
  double? price;
  String? content;

  coffee({this.content, this.image, this.name, this.price});

  coffee.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    price = json['price'];
    content = json['content'];
  }
}
