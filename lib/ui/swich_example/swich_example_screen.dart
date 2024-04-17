import 'package:flutter/material.dart';

class SwichExampleScreen extends StatelessWidget {
  const SwichExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example two'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notification'),
                Switch(
                  value: true,
                  onChanged: (newvalue) {},
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              color: Colors.red.withOpacity(.2),
            ),
            SizedBox(
              height: 50,
            ),
            Slider(value: .4, onChanged: (value) {})
          ],
        ),
      ),
    );
  }
}
