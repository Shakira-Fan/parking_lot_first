import 'package:app/screens/enter_plate_number.dart';
import 'package:app/widgets/custom_appbar.dart';
import 'package:app/widgets/custom_footer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(height: 100),
      body: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) {
              // 这里根据settings返回不同的页面组件
              return const EnterPlateNumber(); // 默认显示EnterPlateNumber页面
            },
          );
        },
      ),
      bottomNavigationBar: const CustomFooter(),
    );
  }
}
