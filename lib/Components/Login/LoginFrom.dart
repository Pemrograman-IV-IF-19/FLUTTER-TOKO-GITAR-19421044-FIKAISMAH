import 'package:flutter/material.dart';
import 'package:toko_gitar/Components/custom_surfix_icon.dart';
import 'package:toko_gitar/Screens/Reister/Registrasi.dart';
import 'package:toko_gitar/size_config.dart';
import 'package:toko_gitar/Utils/Constants.dart';

import '../dafault_bottom_costume_color.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInform> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remeber = false;

  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildusername(), //buat nampilin fildnya
          SizedBox(height: getProportionateScreenHeight(30)), //jarak
          buildPassword(), //buat nampilin fildnya
          SizedBox(height: getProportionateScreenHeight(30)), //jarak
          Row(
            children: [
              Checkbox(
                  value: remeber,
                  onChanged: (value) {
                    setState(() {
                      remeber = value;
                    });
                  }),
              Text("Tetap Masuk"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Lupa Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          DefaultButtonCustomeColor(
              color: kPrimaryColor, text: "MASUK", press: () {}),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RegisterScreen.routeName);
            },
            child: Text(
              "Belum Punya Akun ? Daftar Disini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildusername() {
    // konfigurasi text field username
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'username',
          hintText: 'Masukan Username Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "/icons/User.svg",
          )),
    );
  } //untuk field nya

  TextFormField buildPassword() {
    // konfigurasi text field password
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukan Password Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "/icons/Lock.svg",
          )),
    );
  } //untuk field nya
}
