import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_shop/common/utils/log_util.dart';
import 'package:flutter_shop/pages/cart_page.dart';
import 'package:flutter_shop/pages/category_page.dart';
import 'package:flutter_shop/pages/home_page.dart';
import 'package:flutter_shop/pages/member_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => new _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with AutomaticKeepAliveClientMixin {
  // 底部导航栏
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
        title: Text("首页"), icon: Icon(CupertinoIcons.home)),
    BottomNavigationBarItem(
        title: Text("分类"), icon: Icon(CupertinoIcons.search)),
    BottomNavigationBarItem(
        title: Text("购物车"), icon: Icon(CupertinoIcons.shopping_cart)),
    BottomNavigationBarItem(
        title: Text("会员中心"), icon: Icon(CupertinoIcons.profile_circled)),
  ];

  // 页面
  final List<Widget> tabBodies = [HomePage(), CategoryPage(), CartPage(), MemberPage()];

  // 当前页面index
  int currentIndex = 0;

  // 是否需要保持view的状态 true 为 保存状态 false 为重新刷新界面
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return new Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        // 页面设置
        items: bottomTabs,
        // 导航栏类型
        type: BottomNavigationBarType.fixed,
        // 当前页面位置
        currentIndex: currentIndex,
        //
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children: tabBodies,
      ),
    );
  }

  @override
  void initState() {
    // 设置默认页面
    L.d('initState');
    super.initState();
  }

}
