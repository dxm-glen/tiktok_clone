import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/screens/sign_up/sign_up_screen.dart';

class LoginSCreen extends StatelessWidget {
  const LoginSCreen({super.key});

  void onSignupTap(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.size40,
          ),
          child: Column(
            children: [
              Gaps.v80,
              Text(
                "Log in to TikTok",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gaps.v20,
              Text(
                "Manage your account, check notifications, comment on videos, and more.",
                style: TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.size24),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("Don't have an account?"),
            Gaps.h5,
            GestureDetector(
              onTap: () => onSignupTap(context),
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}