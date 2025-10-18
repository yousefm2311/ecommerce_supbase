import 'package:ecommerce_supbase/core/widgets/text_button.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/widgets/divider_partition.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/widgets/sign_in_button.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/widgets/social_auth_partition.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/widgets/terms_conditions.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/widgets/text_form_field.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/widgets/text_partition.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Form(
                  key: fromKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextPartition(),
                      const SignInTextFormField(),
                      CustomTextButton(
                        
                        text: 'Forget Password?',
                        onPressed: () {},
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: size.height * 0.05),
                      SignInButton(
                        onPressed: () {
                          if (fromKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                            // Process data
                          }
                        },
                      ),
                      SizedBox(height: size.height * 0.03),
                      const DividerPartition(),
                      SizedBox(height: size.height * 0.03),
                      SocialAuthPartition(
                        text: 'Continue with Google',
                        image: 'assets/images/google.png',
                        onTap: () {},
                      ),
                      SizedBox(height: size.height * 0.02),
                      SocialAuthPartition(
                        text: 'Continue with Facebook',
                        image: 'assets/images/facebook.png',
                        onTap: () {},
                      ),
                      SizedBox(height: size.height * 0.02),
                      SocialAuthPartition(
                        text: 'Continue with Apple',
                        image: 'assets/images/apple.png',
                        onTap: () {},
                      ),
                      SizedBox(height: size.height * 0.05),
                      const TermsConditions(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
