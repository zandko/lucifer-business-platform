import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/components/topbar.dart';
import 'package:shop_app/components/cache_network_image.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List _category = [];

  @override
  void initState() {
    super.initState();
    _category.add('新品');
    _category.add('手机');
    _category.add('电视');
    _category.add('电脑');
    _category.add('家电');
    _category.add('路由');
    _category.add('智能');
    _category.add('电源');
    _category.add('耳机');
    _category.add('音响');
    _category.add('礼品');
    _category.add('家电');
    _category.add('智能');
    _category.add('电源');
    _category.add('耳机');
    _category.add('音响');
    _category.add('礼品');
    _category.add('家电');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GZTopBar(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SingleChildScrollView(
                  child: _buildLeftMenuWidget(),
                ),
                SingleChildScrollView(
                  child: _buildLeftMenuContentWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLeftMenuWidget() {
    return Container(
      color: Colors.white,
      child: Column(
        children: _category.map((item) {
          return Container(
            alignment: Alignment.center,
            width: ScreenUtil.getInstance().setWidth(168),
            height: ScreenUtil.getInstance().setHeight(74),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: ScreenUtil.getInstance().setWidth(1),
                  color: Color.fromRGBO(80, 80, 80, 0.1),
                ),
                right: BorderSide(
                  width: ScreenUtil.getInstance().setWidth(1),
                  color: Color.fromRGBO(80, 80, 80, 0.1),
                ),
              ),
            ),
            child: Text(
              item,
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(28),
                color: Color.fromRGBO(80, 80, 80, 1),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  _buildLeftMenuContentWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(
          ScreenUtil.getInstance().setWidth(30),
          ScreenUtil.getInstance().setHeight(16),
          ScreenUtil.getInstance().setWidth(30),
          0),
      width: ScreenUtil.getInstance().setWidth(582),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            width: ScreenUtil.getInstance().setWidth(520),
            height: ScreenUtil.getInstance().setHeight(186),
            child: GZCacheNetworkImageWidget(
              imageUrl:
                  'https://img.alicdn.com/tfscom/i1/2610856926/TB2JAdPhwRkpuFjy1zeXXc.6FXa_!!2610856926.jpg_360x360xzq90.jpg_.webp',
            ),
          ),
          SizedBox(
            height: ScreenUtil.getInstance().setHeight(44),
          ),
          Column(
            children: [1, 2, 3].map((item) {
              return Container(
                margin: EdgeInsets.only(
                  bottom: ScreenUtil.getInstance().setHeight(32),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            right: ScreenUtil.getInstance().setWidth(10),
                          ),
                          width: ScreenUtil.getInstance().setWidth(50),
                          height: 1,
                          color: Color.fromRGBO(56, 56, 56, 0.5),
                        ),
                        Text(
                          '手机',
                          style: TextStyle(
                            fontSize: ScreenUtil.getInstance().setSp(28),
                            color: Color.fromRGBO(56, 56, 56, 1),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: ScreenUtil.getInstance().setWidth(10),
                          ),
                          width: ScreenUtil.getInstance().setWidth(50),
                          height: 1,
                          color: Color.fromRGBO(56, 56, 56, 0.5),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(46),
                    ),
                    Wrap(
                      spacing: ScreenUtil.getInstance().setWidth(30),
                      runSpacing: ScreenUtil.getInstance().setHeight(42),
                      children: [1, 2, 3, 4, 5, 6].map((item) {
                        return Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: ScreenUtil.getInstance().setWidth(154),
                                height: ScreenUtil.getInstance().setHeight(154),
                                child: GZCacheNetworkImageWidget(
                                  imageUrl:
                                      'https://img.alicdn.com/tfscom/i1/2610856926/TB2JAdPhwRkpuFjy1zeXXc.6FXa_!!2610856926.jpg_360x360xzq90.jpg_.webp',
                                ),
                              ),
                              SizedBox(
                                height: ScreenUtil.getInstance().setHeight(15),
                              ),
                              Text(
                                '红米5',
                                style: TextStyle(
                                  fontSize: ScreenUtil.getInstance().setSp(26),
                                  color: Color.fromRGBO(128, 128, 128, 1),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
