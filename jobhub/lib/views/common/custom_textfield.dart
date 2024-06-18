import 'package:flutter/material.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/app_style.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputTyp;
  final bool? obscuretext;
  final String hinttext;
  final Widget? suffixicon;
  final String? Function(String?)? validator;


  const CustomTextField({super.key, required this.controller, required this.textInputTyp, this.obscuretext, required this.hinttext, this.suffixicon, this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(kLightGrey.value),
      child: TextFormField(
        controller: controller,
        cursorHeight: 25,
        style:  appstyle(14, Color(kDark.value), FontWeight.w500),
        validator: validator,
        keyboardType: textInputTyp,
        obscureText: obscuretext??false,
        decoration: InputDecoration(
          hintText: hinttext,
          suffixIcon: suffixicon
,
hintStyle: appstyle(14, Color(kDarkGrey.value), FontWeight.w500),
errorBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.red,width: 0.5),

  
),
focusedBorder:  OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black,width: 0.5),

  
),
focusedErrorBorder:  OutlineInputBorder(
  borderSide: BorderSide(color: Colors.red,width: 0.5),

  
),
disabledBorder:  OutlineInputBorder(
  borderSide: BorderSide(color: Color(kDarkGrey.value),width: 0.5),

  
),
enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Color.fromARGB(0, 244, 67, 54),width: 0.5),

  
),
        ),
      ),
    );
  }
}