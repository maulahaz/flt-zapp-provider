import 'package:flutter/material.dart';

import '../../widgets/x_widgets.dart';

class FormInputPage extends StatefulWidget {
  const FormInputPage({super.key});

  @override
  State<FormInputPage> createState() => _FormInputPageState();
}

class _FormInputPageState extends State<FormInputPage> {
  final txtName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example: Form Input'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Form input Text'),
            MyForms.text(context, txtName, 'Name'),
            SizedBox(height: 5),
            MyForms.text(context, txtName, 'Email'),
            SizedBox(height: 5),
            MyForms.password(context, txtName, 'Password'),
            SizedBox(height: 5),
            MyForms.textIconned(context, txtName, 'Password', Icon(Icons.cabin)),
          ],
        ),
      ),
    );
  }
}
