import 'package:advicer_smart_api/application/core/services/theme_service.dart';
import 'package:advicer_smart_api/application/pages/advice/widgets/advice_field.dart';
import 'package:advicer_smart_api/application/pages/advice/widgets/custom_button.dart';
import 'package:advicer_smart_api/application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Advicer',
          style: themeData.textTheme.displayLarge,
        ),
        centerTitle: true,
        actions: [
          Switch(
              value: Provider.of<ThemeService>(context).isDarkModeOn,
              onChanged: (_) {
                Provider.of<ThemeService>(context, listen: false).toggleTheme();
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              child: Center(
                child: ErrorMessage(messge: 'Kakzas negerai'),
                // AdviceField(advice: 'Hello'),
                // CircularProgressIndicator(
                //   color: themeData.colorScheme.secondary,
                // ),
                // Text(
                //   'Your Advice is waiting for You!',
                //   style: themeData.textTheme.displayLarge,
                // ),
              ),
            ),
            SizedBox(
              height: 200,
              child: Center(
                child: CustomButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
