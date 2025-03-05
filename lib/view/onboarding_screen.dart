import 'package:coin_boost/modelView/earnings_provider.dart';
import 'package:coin_boost/view/core/components/custom_button.dart';
import 'package:coin_boost/view/core/style/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            spacing: 40,
            children: [
              const Image(
                image: AssetImage('assets/LOGO.png'),
                width: 219,
                height: 194,
              ),
              const Image(
                image: AssetImage('assets/savings.png'),
                width: 250,
                height: 250,
              ),
              Container(
                height: 48,
                width: 307,
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: ColorManager.grey.withOpacity(0.3),
                      spreadRadius: 2, // How much the shadow spreads
                      blurRadius: 5, // Blur effect of the shadow
                      offset: const Offset(0, 4), // Position of the shadow
                    ),
                  ],
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  cursorColor: ColorManager.lightGrey,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Mobile Number',
                    hintStyle: TextStyle(color: ColorManager.lightGrey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ColorManager.lightGrey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ColorManager.lightGrey,
                      ),
                    ),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(15),
                  ],
                  onChanged: (value) {
                    context.read<EarningsProvider>().setNumber(value);
                  },
                ),
              ),
              Consumer<EarningsProvider>(
                builder: (context, provider, child) {
                  return CustomButton(
                    onPressed:
                        context.read<EarningsProvider>().mobileNumber.length > 7
                            ? () => Navigator.pushReplacementNamed(
                                  context,
                                  '/BottomNavigation',
                                )
                            : null,
                    text: 'Continue',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
