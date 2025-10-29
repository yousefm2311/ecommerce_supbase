import 'package:animate_do/animate_do.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/functions/navigator.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/widgets/signin_text_form_field.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/widgets/terms_conditions.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/widgets/text_partition.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height * 0.05),
                      FadeInUp(
                        duration: const Duration(milliseconds: 500),
                        child: const TextPartition(
                          title: AppStrings.login,
                          subtitle: AppStrings.bodyLogin,
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      FadeInUp(
                        duration: const Duration(milliseconds: 600),
                        delay: const Duration(milliseconds: 150),
                        child: const SignInTextFormField(),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 700),
                        delay: const Duration(milliseconds: 300),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: CustomTextButton(
                            text: AppStrings.forgotPaswword,
                            onPressed: () {
                              pushNamedRoute(AppRoutes.forgetpassword);
                            },
                            textColor: AppColors.primaryDark,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      FadeInUp(
                        duration: const Duration(milliseconds: 750),
                        delay: const Duration(milliseconds: 400),
                        child: CustomMaterialButton(
                          text: AppStrings.login,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              FocusScope.of(context).unfocus();
                            }
                            pushReplacementAllNamedRoute(
                              AppRoutes.bottomNaviBar,
                            );
                          },
                          elevation: 0,
                          textColor: AppColors.white,
                          width: double.infinity,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                      FadeInUp(
                        duration: const Duration(milliseconds: 800),
                        delay: const Duration(milliseconds: 500),
                        child: CustomMaterialButton(
                          text: AppStrings.register,
                          onPressed: () {
                            pushNamedRoute(AppRoutes.register);
                          },
                          isOutlined: true,
                          borderColor: AppColors.textLight,
                          elevation: 0,
                          textColor: AppColors.primaryDark,
                          width: double.infinity,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(height: size.height * 0.2),
                      FadeInUp(
                        duration: const Duration(milliseconds: 850),
                        delay: const Duration(milliseconds: 600),
                        child: const Center(child: TermsConditions()),
                      ),
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
