import 'package:flutter/material.dart';
import 'package:flutter_app/helpers/x_helpers.dart';
import 'package:flutter_app/pages/x_pages.dart';

import 'package:flutter_app/widgets/x_widgets.dart';
import '../../../configs/x_configs.dart';
import '../../features/x_features.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(height: 5),
              MyButtons.primary(context, 'Buttons', () => context.push(ButtonPage())),
              SizedBox(height: 5),
              MyButtons.primary(context, 'Form Inputs', () => context.push(FormInputPage())),
              SizedBox(height: 5),
              //--Elevated Button:
              ElevatedButton(
                onPressed: (){},
                child: Text('ElevatedButton'),
              ),
              SizedBox(height: 5),
              //--ConstrainedBox:
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight:100,
                  maxWidth: 100
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: cYellow,
                  child: Text('Text in ConstrainedBox')),
              ),
              SizedBox(height: 5),
              //--MaterialButton:
              MaterialButton(
                onPressed: (){},
                child: Text('MaterialButton'),
              ),
              //--MaterialButton2:
              MyButtons.primary(context,'ElevatedButton Primary-2',(){}),
              SizedBox(height: 5),
              MyButtons.danger(context,'ElevatedButton Danger-2',(){}),
            ],
          ),
        ),
      ),
    );
  }
}
