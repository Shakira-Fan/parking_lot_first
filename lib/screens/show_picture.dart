import 'package:app/screens/payment.dart';
import 'package:app/widgets/custom_borderButton.dart';
import 'package:app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class ShowPicture extends StatefulWidget {
  const ShowPicture({super.key});

  @override
  State<ShowPicture> createState() => _ShowPictureState();
}

class _ShowPictureState extends State<ShowPicture> {
  bool _isChecked = false;
  int _selectedImageIndex = -1;

  Widget _checkedAndCancelButton() {
    return Row(
      children: [
        CustomBorderButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          bgColor: const Color.fromARGB(215, 255, 5, 126),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          borderWidth: 2,
          borderRadius: BorderRadius.circular(8),
          child: const Text(
            '取消',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        const SizedBox(width: 8),
        CustomBorderButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return const Payment();
            }));
          },
          bgColor: const Color.fromARGB(255, 46, 175, 239),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          borderWidth: 2,
          borderRadius: BorderRadius.circular(8),
          child: const Text(
            '確認',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleText(text: '請點選車輛圖片'),
              _isChecked ? _checkedAndCancelButton() : const SizedBox.shrink()
            ],
          ),
          const SizedBox(height: 24),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 每行显示两个项目
                crossAxisSpacing: 16.0, // 水平间距
                mainAxisSpacing: 16.0, // 垂直间距
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedImageIndex = index;
                      _isChecked = true;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: _selectedImageIndex == index
                            ? Border.all(color: Colors.red, width: 2)
                            : null,
                        borderRadius: BorderRadius.circular(8)),
                    child: Image.asset(
                      'assets/images/car.jpg',
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
