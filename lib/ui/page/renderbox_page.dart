import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/widget/red_box.dart';

class RenderboxPage extends StatelessWidget {
  const RenderboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RenderBox'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        // actions: [
        //   UnconstrainedBox(
        //     child: SizedBox(
        //       width: 80,
        //       height: 80,
        //       child: CircularProgressIndicator(
        //         color: Colors.red,
        //         strokeCap: StrokeCap.round,
        //       ),
        //     ),
        //   )
        // ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: double.infinity, //宽度尽可能大
                minHeight: 50.0 //最小高度为50像素
              ),
              child: Container(
                height: 5.0, 
                child: RedBox() , // 使用我们定义的RedBox组件
              ),
            ),
            SizedBox(
              width: 80.0,
              height: 80.0,
              child: RedBox()
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0), //父
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),//子
                child: RedBox(),
              ),
            )
          ],
        )
      ),
    );
  }
}