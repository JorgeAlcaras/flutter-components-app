import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:flutter_components_app/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void AlertIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('IOS'),
          content: const Text('This is a IOS device!'),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close', style: TextStyle(color: Colors.red),
        ),
            ),
          ],
        );
      }
    );
  }

  void Alert(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Android'),
          content: const Text('This is a Android device!'),
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

  void Alert2(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Title'),
          icon: const Icon(Icons.book_online, color: Colors.cyan, size: 100),
          elevation: 24,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('This is a message!'),
            ],
          ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 350),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          ElevatedButton(
              child: const Text('Show Alert'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: AppTheme.global,
            ),
            onPressed: (){
              Alert(context);
            }
          ),
    ]
    ),
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ElevatedButton(
              child: const Text('Show Alert 2'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppTheme.global,
              ),
              onPressed: (){
                Alert2(context);
              }
          ),
          ],
          ),
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
              child: const Text('Show Alert IOS'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppTheme.global,
                  ),
                  onPressed: () => AlertIOS(context),
              ),
            ],
          ),
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
              child: const Text('Show Alert IOS or Android'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppTheme.global,
                  ),
                  onPressed: () => Platform.isAndroid ?
                  Alert(context) :
                  AlertIOS(context),
              ),
            ],
          ),
        ],

        ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back, color: Colors.white,),
        backgroundColor: AppTheme.global,
        onPressed: () {
         Navigator.pop(context);
        },
      ),
    );
  }
}
