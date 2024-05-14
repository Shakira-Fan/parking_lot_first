import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height; // 自定义高度

  const CustomAppBar({super.key, required this.height});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        alignment: Alignment.center,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '中保自動停車繳費機',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 12),
            Text(
              '日期 :2024/04/30   時間:11:50:30',
              style: TextStyle(
                  color: Color(0xFF7C64D5),
                  fontSize: 16,
                  fontWeight: FontWeight.w900),
            )
          ],
        ));
  }
}
