// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeBean _$HomeBeanFromJson(Map<String, dynamic> json) {
  return HomeBean(
      json['code'] as String,
      json['message'] as String,
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>));
}

Map<String, dynamic> _$HomeBeanToJson(HomeBean instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      json['floor2Pic'] == null
          ? null
          : FloorPic.fromJson(json['floor2Pic'] as Map<String, dynamic>),
      json['floor3Pic'] == null
          ? null
          : FloorPic.fromJson(json['floor3Pic'] as Map<String, dynamic>),
      json['reservationGoods'] as List,
      json['floorName'] == null
          ? null
          : FloorName.fromJson(json['floorName'] as Map<String, dynamic>),
      (json['slides'] as List)
          ?.map((e) =>
              e == null ? null : Slide.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['recommend'] as List)
          ?.map((e) =>
              e == null ? null : Recommend.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['advertesPicture'] == null
          ? null
          : FloorPic.fromJson(json['advertesPicture'] as Map<String, dynamic>),
      (json['floor3'] as List)
          ?.map((e) =>
              e == null ? null : Slide.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['floor2'] as List)
          ?.map((e) =>
              e == null ? null : Slide.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['category'] as List)
          ?.map((e) =>
              e == null ? null : Category.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['floor1'] as List)
          ?.map((e) =>
              e == null ? null : Slide.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['saoma'] == null
          ? null
          : FloorPic.fromJson(json['saoma'] as Map<String, dynamic>),
      json['shopInfo'] == null
          ? null
          : ShopInfo.fromJson(json['shopInfo'] as Map<String, dynamic>),
      json['integralMallPic'] == null
          ? null
          : FloorPic.fromJson(json['integralMallPic'] as Map<String, dynamic>),
      json['toShareCode'] == null
          ? null
          : FloorPic.fromJson(json['toShareCode'] as Map<String, dynamic>),
      json['floor1Pic'] == null
          ? null
          : FloorPic.fromJson(json['floor1Pic'] as Map<String, dynamic>),
      json['newUser'] == null
          ? null
          : FloorPic.fromJson(json['newUser'] as Map<String, dynamic>));
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'floor2Pic': instance.floor2Pic,
      'floor3Pic': instance.floor3Pic,
      'reservationGoods': instance.reservationGoods,
      'floorName': instance.floorName,
      'slides': instance.slides,
      'recommend': instance.recommend,
      'advertesPicture': instance.advertesPicture,
      'floor3': instance.floor3,
      'floor2': instance.floor2,
      'category': instance.category,
      'floor1': instance.floor1,
      'saoma': instance.saoma,
      'shopInfo': instance.shopInfo,
      'integralMallPic': instance.integralMallPic,
      'toShareCode': instance.toShareCode,
      'floor1Pic': instance.floor1Pic,
      'newUser': instance.newUser
    };

FloorPic _$FloorPicFromJson(Map<String, dynamic> json) {
  return FloorPic(
      json['TO_PLACE'] as String, json['PICTURE_ADDRESS'] as String);
}

Map<String, dynamic> _$FloorPicToJson(FloorPic instance) => <String, dynamic>{
      'TO_PLACE': instance.toPlace,
      'PICTURE_ADDRESS': instance.pictureAddress
    };

FloorName _$FloorNameFromJson(Map<String, dynamic> json) {
  return FloorName(json['floor3'] as String, json['floor2'] as String,
      json['floor1'] as String);
}

Map<String, dynamic> _$FloorNameToJson(FloorName instance) => <String, dynamic>{
      'floor3': instance.floor3,
      'floor2': instance.floor2,
      'floor1': instance.floor1
    };

Slide _$SlideFromJson(Map<String, dynamic> json) {
  return Slide(json['image'] as String, json['goodsId'] as String);
}

Map<String, dynamic> _$SlideToJson(Slide instance) =>
    <String, dynamic>{'image': instance.image, 'goodsId': instance.goodsId};

Recommend _$RecommendFromJson(Map<String, dynamic> json) {
  return Recommend(
      json['image'] as String,
      (json['mallPrice'] as num)?.toDouble(),
      json['goodsId'] as String,
      (json['price'] as num)?.toDouble(),
      json['goodsName'] as String);
}

Map<String, dynamic> _$RecommendToJson(Recommend instance) => <String, dynamic>{
      'image': instance.image,
      'mallPrice': instance.mallPrice,
      'goodsId': instance.goodsId,
      'price': instance.price,
      'goodsName': instance.goodsName
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
      json['mallCategoryId'] as String,
      json['mallCategoryName'] as String,
      (json['bxMallSubDto'] as List)
          ?.map((e) => e == null
              ? null
              : BxMallSubDto.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['image'] as String);
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'mallCategoryId': instance.mallCategoryId,
      'mallCategoryName': instance.mallCategoryName,
      'bxMallSubDto': instance.bxMallSubDto,
      'image': instance.image
    };

BxMallSubDto _$BxMallSubDtoFromJson(Map<String, dynamic> json) {
  return BxMallSubDto(
      json['mallSubId'] as String,
      json['mallCategoryId'] as String,
      json['mallSubName'] as String,
      json['comments'] as String);
}

Map<String, dynamic> _$BxMallSubDtoToJson(BxMallSubDto instance) =>
    <String, dynamic>{
      'mallSubId': instance.mallSubId,
      'mallCategoryId': instance.mallCategoryId,
      'mallSubName': instance.mallSubName,
      'comments': instance.comments
    };

ShopInfo _$ShopInfoFromJson(Map<String, dynamic> json) {
  return ShopInfo(json['leaderImage'] as String, json['leaderPhone'] as String);
}

Map<String, dynamic> _$ShopInfoToJson(ShopInfo instance) => <String, dynamic>{
      'leaderImage': instance.leaderImage,
      'leaderPhone': instance.leaderPhone
    };
