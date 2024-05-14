import 'package:app/widgets/custom_borderButton.dart';
import 'package:flutter/material.dart';

class NumberKeyboard extends StatelessWidget {
  final Function(String) onKeyPressed;
  final Function() onClearPressed;
  final Function() onBackspacePressed;

  const NumberKeyboard(
      {super.key,
      required this.onKeyPressed,
      required this.onClearPressed,
      required this.onBackspacePressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNumberButton('1'),
              _buildNumberButton('2'),
              _buildNumberButton('3'),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNumberButton('4'),
              _buildNumberButton('5'),
              _buildNumberButton('6'),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNumberButton('7'),
              _buildNumberButton('8'),
              _buildNumberButton('9'),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildEmptyButton(),
              _buildNumberButton('0'),
              _buildBackspaceButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNumberButton(String value) {
    return CustomBorderButton(
      onPressed: () {
        onKeyPressed(value);
      },
      borderColor: const Color(0xFF7C64D5), // 设置边框颜色
      borderWidth: 2.0, // 设置边框宽度
      borderRadius: BorderRadius.circular(8),
      padding: const EdgeInsets.symmetric(horizontal: 46.0, vertical: 28.0),
      child: Text(
        value,
        style: const TextStyle(fontSize: 24),
      ), // 设置边框圆角
    );
  }

  Widget _buildEmptyButton() {
    return CustomBorderButton(
      onPressed: () {
        onClearPressed();
      },
      borderColor: const Color(0xFF7C64D5), // 设置边框颜色
      borderWidth: 2.0, // 设置边框宽度
      borderRadius: BorderRadius.circular(8),
      padding: const EdgeInsets.symmetric(horizontal: 46.0, vertical: 28.0),
      child: const Text(
        'C',
        style: TextStyle(fontSize: 24),
      ), // 设置边框圆角
    );
  }

  Widget _buildBackspaceButton() {
    return CustomBorderButton(
        onPressed: () {
          onBackspacePressed();
        },
        borderColor: const Color(0xFF7C64D5), // 设置边框颜色
        borderWidth: 2.0, // 设置边框宽度
        borderRadius: BorderRadius.circular(8),
        padding: const EdgeInsets.symmetric(
            horizontal: 40.0, vertical: 30.0), // 设置边框圆角
        child: const Icon(
          Icons.backspace,
          size: 28,
        ));
  }
}
