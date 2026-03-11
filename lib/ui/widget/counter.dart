import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, this.delta = 1});

  final int delta;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // 计数变量
  int _count = 0;

  // 增加计数变量的方法
  void _increase(){
    setState(() {
      //通过继承的widget属性访问组件类的属性
      _count += widget.delta;
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        // 按钮被点击后增加计数变量
        _increase();
      }, 
      // 在按钮中显示当前计数值
      child: Text("点按增加计数器: $_count"),
      
      onLongPress: () {
        setState(() {
          _count = 0;
        });
      },
    );
  }

  @override
  void dispose() {
    
    super.dispose();
  }
}