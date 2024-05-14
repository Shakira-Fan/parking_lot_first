import 'package:app/widgets/content_text.dart';
import 'package:app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(text: '請確認車輛資訊及金額'),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContentText(text: '入場日期:'),
                        ContentText(text: '2024/05/03'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContentText(text: '入場時間:'),
                        ContentText(text: '10:55'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContentText(text: '車牌號碼:'),
                        ContentText(text: 'TC-303'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContentText(text: '停車費用:'),
                        ContentText(text: '\$1,350'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContentText(text: '折扣金額:'),
                        ContentText(text: '\$0'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContentText(
                          text: '應付金額:',
                          color: Colors.red,
                        ),
                        ContentText(
                          text: '\$1,350',
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 36),
              Image.asset(
                'assets/images/car.jpg',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
