import 'package:flutter/material.dart';

class Customtextformauth extends StatelessWidget {
  final TextEditingController? controller;
  final String hinttext;
  final String labeltext;
  final IconData? icon;
  final bool? isemail;
  final bool? isphone;
  final bool? ispassword;
  final void Function()? onTapIcon;
  final String? Function(String?)? validator;
  const Customtextformauth({
    Key? key,
     required this.controller, 
     required this.hinttext, 
     required this.labeltext,
      this.icon, this.isemail ,this.isphone ,this.ispassword,
      this.onTapIcon,
      this.validator
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: isemail==true? TextInputType.emailAddress :isphone==true? TextInputType.phone : null,
        obscureText: ispassword==null || ispassword==false? false : true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(25)),
            contentPadding: const EdgeInsets.all(20),
          hintText: hinttext,
          label: Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(labeltext),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: InkWell (onTap: onTapIcon ,child: Icon(icon),
          )
          
         
        ),
        
      ),
    );
  }
}