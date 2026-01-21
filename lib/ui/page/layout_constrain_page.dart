import 'package:flutter/material.dart';

class LayoutConstrainPage extends StatelessWidget {
  const LayoutConstrainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 标题栏
      appBar: AppBar(
        // 标题栏的标题属性，可以接收一个Widget
        title: Row(
          children: [
            Text(
              "Flutter Demo",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 20,
              width:  20,
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: Colors.redAccent,
              )
            ),
          ],
        ),
        actions: [
          Container(
            height: 80,
            width: 80,
            decoration: ShapeDecoration(
              shape: CircleBorder(),
              color: Colors.white,
            )
          ),
          SizedBox(
            width: 80,
            height: 80,
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ],
        // 设置标题栏颜色，颜色从我们设置的主题配色方案中生成
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),

      body: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}