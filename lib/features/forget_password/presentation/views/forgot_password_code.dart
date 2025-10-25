import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/functions/navigator.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:ecommerce_supbase/features/forget_password/presentation/views/widgets/reset_code_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordCode extends StatefulWidget {
  const ForgotPasswordCode({super.key});

  @override
  State<ForgotPasswordCode> createState() => _ForgotPasswordCodeState();
}

class _ForgotPasswordCodeState extends State<ForgotPasswordCode> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(AppStrings.checkemail, style: AppTextStyles.title),
              const SizedBox(height: 20),
              const Text(AppStrings.checkemailbody, style: AppTextStyles.small),
              const SizedBox(height: 20),
              const ResetCodeField(),
              const SizedBox(height: 20),
              CustomMaterialButton(
                width: double.infinity,
                text: AppStrings.confirm,
                onPressed: () {
                  pushNamedRoute(AppRoutes.setnewPassword);
                },
              ),
              const SizedBox(height: 30),
               Row(
                children: [
                  const Text(AppStrings.resendCode,style:AppTextStyles.body),
                  CustomTextButton(text: 'أعد إرساله', onPressed: (){
                    
                  },textColor: AppColors.primary,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
