import 'package:json_annotation/json_annotation.dart';

part 'home_bean.g.dart';

// flutter packages pub run build_runner build
// flutter packages pub run build_runner watch
@JsonSerializable()
class HomeBean extends Object {

  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  Data data;

  HomeBean(this.code,this.message,this.data,);

  factory HomeBean.fromJson(Map<String, dynamic> srcJson) => _$HomeBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HomeBeanToJson(this);

}


@JsonSerializable()
class Data extends Object {

  @JsonKey(name: 'floor2Pic')
  FloorPic floor2Pic;

  @JsonKey(name: 'floor3Pic')
  FloorPic floor3Pic;

  @JsonKey(name: 'reservationGoods')
  List<dynamic> reservationGoods;

  @JsonKey(name: 'floorName')
  FloorName floorName;

  @JsonKey(name: 'slides')
  List<Slide> slides;

  @JsonKey(name: 'recommend')
  List<Recommend> recommend;

  @JsonKey(name: 'advertesPicture')
  FloorPic advertesPicture;

  @JsonKey(name: 'floor3')
  List<Slide> floor3;

  @JsonKey(name: 'floor2')
  List<Slide> floor2;

  @JsonKey(name: 'category')
  List<Category> category;

  @JsonKey(name: 'floor1')
  List<Slide> floor1;

  @JsonKey(name: 'saoma')
  FloorPic saoma;

  @JsonKey(name: 'shopInfo')
  ShopInfo shopInfo;

  @JsonKey(name: 'integralMallPic')
  FloorPic integralMallPic;

  @JsonKey(name: 'toShareCode')
  FloorPic toShareCode;

  @JsonKey(name: 'floor1Pic')
  FloorPic floor1Pic;

  @JsonKey(name: 'newUser')
  FloorPic newUser;

  Data(this.floor2Pic,this.floor3Pic,this.reservationGoods,this.floorName,this.slides,this.recommend,this.advertesPicture,this.floor3,this.floor2,this.category,this.floor1,this.saoma,this.shopInfo,this.integralMallPic,this.toShareCode,this.floor1Pic,this.newUser,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

@JsonSerializable()
class FloorPic extends Object {

  @JsonKey(name: 'TO_PLACE')
  String toPlace;

  @JsonKey(name: 'PICTURE_ADDRESS')
  String pictureAddress;

  FloorPic(this.toPlace,this.pictureAddress,);

  factory FloorPic.fromJson(Map<String, dynamic> srcJson) => _$FloorPicFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FloorPicToJson(this);

}

@JsonSerializable()
class FloorName extends Object {

  @JsonKey(name: 'floor3')
  String floor3;

  @JsonKey(name: 'floor2')
  String floor2;

  @JsonKey(name: 'floor1')
  String floor1;

  FloorName(this.floor3,this.floor2,this.floor1,);

  factory FloorName.fromJson(Map<String, dynamic> srcJson) => _$FloorNameFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FloorNameToJson(this);

}

@JsonSerializable()
class Slide extends Object {

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'goodsId')
  String goodsId;

  Slide(this.image,this.goodsId,);

  factory Slide.fromJson(Map<String, dynamic> srcJson) => _$SlideFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SlideToJson(this);

}

@JsonSerializable()
class Recommend extends Object {

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'mallPrice')
  double mallPrice;

  @JsonKey(name: 'goodsId')
  String goodsId;

  @JsonKey(name: 'price')
  double price;

  @JsonKey(name: 'goodsName')
  String goodsName;

  Recommend(this.image,this.mallPrice,this.goodsId,this.price,this.goodsName,);

  factory Recommend.fromJson(Map<String, dynamic> srcJson) => _$RecommendFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RecommendToJson(this);

}

@JsonSerializable()
class Category extends Object {

  @JsonKey(name: 'mallCategoryId')
  String mallCategoryId;

  @JsonKey(name: 'mallCategoryName')
  String mallCategoryName;

  @JsonKey(name: 'bxMallSubDto')
  List<BxMallSubDto> bxMallSubDto;

  @JsonKey(name: 'image')
  String image;

  Category(this.mallCategoryId,this.mallCategoryName,this.bxMallSubDto,this.image,);

  factory Category.fromJson(Map<String, dynamic> srcJson) => _$CategoryFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

}

@JsonSerializable()
class BxMallSubDto extends Object {

  @JsonKey(name: 'mallSubId')
  String mallSubId;

  @JsonKey(name: 'mallCategoryId')
  String mallCategoryId;

  @JsonKey(name: 'mallSubName')
  String mallSubName;

  @JsonKey(name: 'comments')
  String comments;

  BxMallSubDto(this.mallSubId,this.mallCategoryId,this.mallSubName,this.comments,);

  factory BxMallSubDto.fromJson(Map<String, dynamic> srcJson) => _$BxMallSubDtoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BxMallSubDtoToJson(this);

}

@JsonSerializable()
class ShopInfo extends Object {

  @JsonKey(name: 'leaderImage')
  String leaderImage;

  @JsonKey(name: 'leaderPhone')
  String leaderPhone;

  ShopInfo(this.leaderImage,this.leaderPhone,);

  factory ShopInfo.fromJson(Map<String, dynamic> srcJson) => _$ShopInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ShopInfoToJson(this);

}



  
