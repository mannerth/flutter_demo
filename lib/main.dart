
import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/page/layout_constrain_page.dart';
import 'package:flutter_demo/ui/page/list_view_build_page.dart';
import 'package:flutter_demo/ui/page/page_return_data_page_a.dart';
import 'package:flutter_demo/ui/page/request_baidu_page.dart';
import 'package:flutter_demo/ui/page/single_child_scroll_view_page.dart';
import 'package:flutter_demo/ui/widget/counter.dart';
import 'package:flutter_demo/ui/widget/demo_card.dart';
import 'package:flutter_demo/ui/widget/nav_card.dart';
import 'package:flutter_demo/ui/page/renderbox_page.dart';
import 'package:flutter_svg/svg.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 我们的根组件是一个MaterialApp
    return MaterialApp(
      // 把home抽离出来，方便阅读
      home: HomePage(),
      // 配置主题，如果需要多种主题的话，这里就要扩展了
      theme: _makeAppTheme(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: DemoCard(
          cardTitle: '导航区', 
          children: [
            NavCard(title: '约束与布局', destination: LayoutConstrainPage()),
            NavCard(title: 'RenderBox', destination: RenderboxPage()),
            NavCard(title: '列表', destination: ListViewBuildPage()),
            NavCard(title: '单子滚动组件', destination: SingleChildScrollViewPage()),
            NavCard(title: '页面传输数据', destination: PageReturnDataPageA()),
            NavCard(title: '请求百度首页', destination: RequestBaiduPage()),
            SvgPicture.asset('assets/images/logo.svg')
          ]
        )
      ),
      floatingActionButton: Counter(),
    );
  }
}

ThemeData _makeAppTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    cardColor: Colors.white,
    shadowColor: Colors.grey,
  );
}