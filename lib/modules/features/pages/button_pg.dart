import 'package:flutter/material.dart';

import '../../../widgets/x_widgets.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Button Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                  width: size.width * 0.5,
                  child: MyButtons.primary(context, 'Primary with SizedBox',
                      () => print('Primary'))),
              SizedBox(height: 5),
              MyButtons.primary(context, 'Primary', () => print('Primary')),
              SizedBox(height: 5),
              MyButtons.warning(context, 'Warning', () => print('Warning')),
              SizedBox(height: 5),
              MyButtons.danger(context, 'Danger', () => print('Danger')),
              SizedBox(height: 5),
              MyButtons.disabled(context, 'Disabled',),
              SizedBox(height: 5),
              MyButtons.isLoading(context, 'Loading...',),
              SizedBox(height: 5),
              MyButtons.primaryOutlined(
                  context, 'Primary Outlined', () => print('Primary Outlined')),
              SizedBox(height: 5),
              MyButtons.dangerOutlined(
                  context, 'Danger Outlined', () => print('Danger Outlined')),
              SizedBox(height: 5),
              MyButtons.primaryGradiented(context, 'Primary Gradiented', () {
                print('Primary Gradiented');
              }),
              SizedBox(height: 5),
              MyButtons.primary(context, 'Show Primary Snackbar', () {
                print('--Clicked: Show Snackbar');
                MySnackbar.primary(context, 'Hello', 'Mabroook');
              }),
              SizedBox(height: 5),
              MyButtons.danger(context, 'Show Danger Snackbar', () {
                print('--Clicked: Show Snackbar');
                MySnackbar.danger(context, 'Upps', 'Error Detected');
              }),
              SizedBox(height: 5),
              MyButtons.primaryOutlined(context, 'Show Dialog', () {
                print('Show Dialog');
                MyDialogs.alert(context, 'Dialog', 'How are you Dialog?');
              }),
              SizedBox(height: 5),
              MyButtons.primaryOutlined(context, 'Show Alert Dialog', () {
                print('Show Alert Dialog');
                MyDialogs.alert2(
                    context, 'AlertDialog', 'How are you AlertDialog?');
              }),
              SizedBox(height: 5),
              MyButtons.primaryGradiented(context, 'Show Loading', () {
                print('Show Loading');
                MyDialogs.loading(context);
              }),
            ],
          ),
        ),
      ),
    );
  }
}