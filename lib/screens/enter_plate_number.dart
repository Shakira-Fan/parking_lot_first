import 'package:app/screens/show_picture.dart';
import 'package:app/widgets/custom_borderButton.dart';
import 'package:app/widgets/number_keyboard.dart';
import 'package:app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class EnterPlateNumber extends StatefulWidget {
  const EnterPlateNumber({super.key});

  @override
  State<EnterPlateNumber> createState() => _EnterPlateNumberState();
}

class _EnterPlateNumberState extends State<EnterPlateNumber> {
  final _numberTextController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _numberTextController.dispose();
  }

  void _onKeyPressed(String value) {
    setState(() {
      _numberTextController.text += value;
    });
  }

  void _onClearPressed() {
    setState(() {
      _numberTextController.text = '';
    });
  }

  void _onBackspacePressed() {
    setState(() {
      _numberTextController.text = _numberTextController.text
          .substring(0, _numberTextController.text.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(text: '請輸入數字車號'),
          const SizedBox(height: 16),
          TextField(
            controller: _numberTextController,
            autofocus: true,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: '請輸入數字',
              border: OutlineInputBorder(),
              hintStyle: TextStyle(fontSize: 20),
              // 添加边框
            ),
            style: const TextStyle(fontSize: 20),
          ),
          NumberKeyboard(
              onKeyPressed: _onKeyPressed,
              onClearPressed: _onClearPressed,
              onBackspacePressed: _onBackspacePressed),
          Container(
            alignment: Alignment.center,
            child: CustomBorderButton(
                onPressed: () {
                  _numberTextController.text = '';
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return const ShowPicture();
                  }));
                },
                borderWidth: 2.0, // 设置边框宽度
                borderRadius: BorderRadius.circular(8), // 设置边框圆角
                padding: const EdgeInsets.symmetric(
                    horizontal: 200.0, vertical: 30.0),
                bgColor: const Color(0xFF7C64D5),
                child: const Text(
                  '確認',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
