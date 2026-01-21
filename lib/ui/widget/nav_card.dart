import 'package:flutter/material.dart';

class NavCard extends StatelessWidget {
  const NavCard({super.key, required this.title, required this.destination});

  final String title;
  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return Container(
      // 设置外边距，只指定上下边距
      margin: EdgeInsets.only(top: 8, bottom: 8),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        // 设置圆角
        borderRadius: BorderRadius.circular(8.0),
        // 设置阴影
        boxShadow: [
          BoxShadow(
            color:Theme.of(context).shadowColor.withValues(alpha: 0.5),
            // 阴影的扩散半径
            spreadRadius: 2,
            // 阴影的模糊半径
            blurRadius: 5,
            // 阴影的偏移量 下,右
            offset: Offset(1, 3),
          ),
        ],
      ),
      // 点击事件监听
      child: GestureDetector(
        //单击
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        //长按
        onLongPress: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('长按了 $title')),
          );
        },
        //水平拖动
        onHorizontalDragEnd: (details) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('水平拖动结束 $title')),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(title),
        ),
      ),
    );
  }
}