# flutter_demo

flutter SDK>=3.3.4都可以

目录结构作为参考

    -/lib
    |
    |----/api放与后端的接口
    |----/router路由
    |----/ui
    |      |----/page页面，每个页面可再建一个目录
    |      |----/widget自定义组件
    |
    |----/main.dart入口

添加依赖时，使用命令可以减少查版本号的麻烦
```Bash
flutter pub add flutter_svg
```

图片资源可以像这样配置，svg不能直接加载，需要svg依赖，其它常见的图片格式jpg、png能用Image组件。
