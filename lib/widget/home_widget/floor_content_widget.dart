import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/model/home_bean.dart';

class FloorContentWidget extends StatelessWidget {
  final List<Slide> slides;

  FloorContentWidget({Key key, this.slides}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          _getFirstWidget(),
          _getOtherWidget()
        ],
      ),
    );
  }

  /// 获取上半部分widget
  Widget _getFirstWidget(){
    return Row(
      children: <Widget>[
        _getItemGoodsWidget(slides[0]),
        Column(
          children: <Widget>[
            _getItemGoodsWidget(slides[1]),
            _getItemGoodsWidget(slides[2])
          ],
        )
      ],
    );
  }

  /// 获取下半部分widget
  Widget _getOtherWidget(){
    return Row(
      children: <Widget>[
            _getItemGoodsWidget(slides[3]),
            _getItemGoodsWidget(slides[4])
      ],
    );
  }

  /// 获取单个item widget
  Widget _getItemGoodsWidget(Slide slide){
    return Container(
      width: ScreenUtil().setWidth(375),
      child: InkWell(
        onTap: (){
          print("点击了 ${slide.goodsId}");
        },
        child: Image.network(slide.image),
      ),
    );
  }
}