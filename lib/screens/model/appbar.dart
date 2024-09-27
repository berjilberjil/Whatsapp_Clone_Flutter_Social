import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget> actions;

  const AppBarWidget({
    Key? key,
    required this.title,
    required this.backgroundColor,
    required this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
