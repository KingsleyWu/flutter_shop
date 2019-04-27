import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/common/utils/http_util.dart';
import 'package:flutter_shop/common/utils/log_util.dart';
import 'package:flutter_shop/config/service_url.dart';
import 'package:flutter_shop/model/home_bean.dart';
import 'package:flutter_shop/model/hot_goods.dart';
import 'package:flutter_shop/widget/home_widget/banner_widget.dart';
import 'package:flutter_shop/widget/home_widget/floor_widget.dart';
import 'package:flutter_shop/widget/home_widget/leader_phone_widget.dart';
import 'package:flutter_shop/widget/home_widget/recommend_widget.dart';
import 'dart:convert';
import 'package:flutter_shop/widget/home_widget/swiper_diy.dart';
import 'package:flutter_shop/widget/home_widget/top_navigator.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/material_header.dart';
import 'package:flutter_easyrefresh/material_footer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var loading = '正在请求数据';
  int page = 1;
  List<HotGoods> hotGoodsList = List();

  GlobalKey<RefreshHeaderState> _headerKey = GlobalKey();
  GlobalKey<RefreshFooterState> _footerKey = GlobalKey();
  GlobalKey<EasyRefreshState> _easyRefreshKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("百姓生活+"),
        ),
        body: EasyRefresh(
          refreshFooter: MaterialFooter(
            key: _footerKey,
          ),
          refreshHeader: MaterialHeader(
            key: _headerKey,
          ),
          key: _easyRefreshKey,
          onRefresh: () async {},
          loadMore: () async {
            _getHotGoods();
          },
          child: FutureBuilder(
            future: _getHomePagesContent(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                L.js(snapshot.data.toString());
                HomeBean homeBean =
                    HomeBean.fromJson(json.decode(snapshot.data.toString()));
                Data data = homeBean.data;
                List<Slide> swiperDataList = data.slides; // 顶部轮播组件数
                List<Category> navigatorList = data.category; // 分类
                String adUrl = data.advertesPicture.pictureAddress;
                String leaderPhone = data.shopInfo.leaderPhone;
                String leaderImageUrl = data.shopInfo.leaderImage;
                var recommend = data.recommend;
                var floor1pic = data.floor1Pic;
                var floor2pic = data.floor2Pic;
                var floor3pic = data.floor3Pic;
                var floor1 = data.floor1;
                var floor2 = data.floor2;
                var floor3 = data.floor3;
                return SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      // The named parameter 'swiperDataList' isn't defined.
                      SwiperDiy(swiperDataList), //页面顶部轮播组件
                      TopNavigator(navigatorList), // 分类
                      BannerWidget(adUrl), // 广告
                      LeaderPhoneWidget(leaderImageUrl, leaderPhone), // 店长电话
                      RecommendWidget(recommendList: recommend), // 推荐商品
                      FloorWidget(
                          pictureAddress: floor1pic.pictureAddress,
                          slides: floor1), // floor 1
                      FloorWidget(
                          pictureAddress: floor2pic.pictureAddress,
                          slides: floor2), // floor 2
                      FloorWidget(
                          pictureAddress: floor3pic.pictureAddress,
                          slides: floor3), // floor 3
                      _getHotGoodsWidget(),
                    ],
                  ),
                );
              } else {
                return Center(
                  child: Text(loading),
                );
              }
            },
          ),
        ));
  }

  void _getHotGoods() {
    var formPage = {'page': page};
    post(homePageBelowContent, formData: formPage).then((value) {
      var decode = json.decode(value.toString());
      var hotGoodsList = HotGoodsList.fromJson(decode);
      var data = hotGoodsList.data;
      L.d("$decode");
      setState(() {
        this.hotGoodsList.addAll(data);
        page++;
      });
    });
  }

  Future _getHomePagesContent() {
    var formData = {'lon': '115.02932', 'lat': '35.76189'};
    return post(homePageContent, formData: formData);
  }

  final Widget _hotTitle = Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
    child: Text("火爆商品"),
  );

  Widget _getHotGoodsItem(HotGoods goods) {
    return InkWell(
      onTap: () {
        L.d('点击了火爆商品${goods.name}');
      },
      child: Container(
        width: ScreenUtil().setWidth(372),
        color: Colors.white,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(bottom: 3),
        child: Column(
          children: <Widget>[
            Image.network(goods.image),
            Text(
              goods.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(26),
                color: Colors.pink,
              ),
            ),
            Row(
              children: <Widget>[
                Text('￥${goods.mallPrice}'),
                Text(
                  '￥${goods.price}',
                  style: TextStyle(
                      color: Colors.black26,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _getHotGoodsList(List<HotGoods> hotGoodsList) {
    if (hotGoodsList.length != 0) {
      List<Widget> listWidget = hotGoodsList.map((goods) {
        return _getHotGoodsItem(goods);
      }).toList();
      return Wrap(
        spacing: 2,
        children: listWidget,
      );
    }
    return Text(' ');
  }

  Widget _getHotGoodsWidget() {
    return Column(
      children: <Widget>[
        _hotTitle,
        _getHotGoodsList(hotGoodsList),
      ],
    );
  }
}
