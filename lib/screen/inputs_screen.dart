import 'package:flutter/material.dart';
import 'package:flutter_components_app/widgets/custom_input_field.dart';
import 'package:flutter_components_app/router/app_routes.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    void Alert(BuildContext context) {
      showDialog(
          barrierDismissible: true,
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Error'),
              content: const Text('Invalid form!'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              icon: const Icon(Icons.warning_rounded, color: Colors.orange, size: 100),
              elevation: 24,
              actions: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Close'),
                ),
              ],
            );
          }
      );
    }

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': '',
      'last_Name': '',
      'email': '',
      'password': '',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        child: Form(
          key: formKey,
        child: Column(
          children: <Widget>[
            CustomInputField(
              labelTextV: 'Name',
              hintTextV: 'Write your name',
              prefixIconV: Icons.person,
              formProperty: 'first_name',
              formValues: formValues,
            ),

            SizedBox(height: 20),

            CustomInputField(
                labelTextV: 'Last Name',
                hintTextV: 'Write your last name',
                prefixIconV: Icons.person,
                formProperty: 'last_Name',
                formValues: formValues,
            ),

            SizedBox(height: 20),

            CustomInputField(
                labelTextV: 'Email',
                hintTextV: 'Write your email',
                prefixIconV: Icons.email,
                keyboardTypeV: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
            ),
            
            SizedBox(height: 20),

            CustomInputField(
              labelTextV: 'Password',
              hintTextV: 'Write your password',
              prefixIconV: Icons.lock,
              //suffixIconV: Icons.visibility,
              keyboardTypeV: TextInputType.visiblePassword,
              obscureTextV: true,
              isPassword: true,
              formProperty: 'password',
              formValues: formValues,
            ),

            SizedBox(height: 20),
            
            ElevatedButton(
              child: SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text('Save'),
              ),
              ),
              onPressed: () {
                if (!formKey.currentState!.validate()) {
                  print('Form is invalid!');
                  Alert(context);
                  return;
                }
                print(formValues);
              },
            ),
          ],
        )
      ),
      ),
    );
  }
}