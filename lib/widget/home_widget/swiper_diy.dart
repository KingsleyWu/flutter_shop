import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/model/home_bean.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/// 轮播图
class SwiperDiy extends StatelessWidget {

  final List<Slide> swiperDataList;

  SwiperDiy(this.swiperDataList);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(333),
      child: Swiper(
        itemBuilder: (context, value) {
          return Image.network(swiperDataList[value].image
              ,fit: BoxFit.fill);
        },
        itemCount: swiperDataList.length,
        pagination: SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}
