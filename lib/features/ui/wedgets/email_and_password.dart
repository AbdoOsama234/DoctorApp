import 'package:flutter/material.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}


class _EmailAndPasswordState extends State<EmailAndPassword> {

  //final formKey=GlobalKey<FormState>();
  bool isObsecureText=true;
  late TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return  Form(
      child: Column(
        children: [

        ],
      ),
    );
  }
}
