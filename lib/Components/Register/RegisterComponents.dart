import 'package:flutter/cupertino.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:toko_gitar/Components/Register/RegisterForm.dart';
import 'package:toko_gitar/size_config.dart';
import 'package:toko_gitar/utils/constants.dart';

class RegisterComponent extends StatefulWidget {
  @override
  _RegisterComponent createState() => _RegisterComponent();
}

class _RegisterComponent extends State<RegisterComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  'Registrasi',
                  style: mTitleStyleNameApps,
                  textAlign: TextAlign.center,
                  // style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SignUpform()
            ],
          ),
        ),
      ),
    );
  }
}
