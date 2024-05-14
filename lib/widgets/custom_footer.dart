import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight, // 开始位置，右上角
          end: Alignment.bottomLeft, // 结束位置，左下角
          colors: [
            Color(0xFFFF057C), // 第一个颜色，从红色开始
            Color(0xFF7C64D5), // 第二个颜色，紫色
            Color(0xFF4CC3FF), // 第三个颜色，蓝色
          ],
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '客服聯絡電話：0800-000-123',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
