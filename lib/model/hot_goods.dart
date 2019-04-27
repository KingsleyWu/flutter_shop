class HotGoodsList {
  String code;
  String message;
  List<HotGoods> data;

  HotGoodsList({this.code, this.message, this.data});

  HotGoodsList.fromJson(Map<String, dynamic> json) {
    this.code = json['code'];
    this.message = json['message'];
    this.data = (json['data'] as List) != null
        ? (json['data'] as List).map((i) => HotGoods.fromJson(i)).toList()
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['data'] =
        this.data != null ? this.data.map((i) => i.toJson()).toList() : null;
    return data;
  }
}

class HotGoods {
  String image;
  String goodsId;
  String name;
  double mallPrice;
  double price;

  HotGoods(
      {this.image, this.goodsId, this.name, this.mallPrice, this.price});

  HotGoods.fromJson(Map<String, dynamic> json) {
    this.image = json['image'];
    this.goodsId = json['goodsId'];
    this.name = json['name'];
    this.mallPrice = json['mallPrice'];
    this.price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['goodsId'] = this.goodsId;
    data['name'] = this.name;
    data['mallPrice'] = this.mallPrice;
    data['price'] = this.price;
    return data;
  }
}
