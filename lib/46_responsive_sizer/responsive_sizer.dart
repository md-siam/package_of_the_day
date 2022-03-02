import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyResponsiveSizer extends StatelessWidget {
  const MyResponsiveSizer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Responsive Sizer')),
      body: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.deepPurple,
                  // This will take 20% of the screen's width
                  width: 20.w,
                  // This will take 30.5% of the screen's height
                  height: 20.5.h,
                ),
                const SizedBox(height: 30),
                Text(
                  'Responsive Sizer',
                  style: TextStyle(fontSize: 20.sp),
                ),
                const SizedBox(height: 30),
                Padding(
                  // For responsive padding
                  padding: EdgeInsets.symmetric(
                    vertical: 5.h,
                    horizontal: 3.h,
                  ),
                  child: const SizedBox(
                    child: Text('Responsive Padding'),
                  ),
                ),
                Container(
                  //It will take a 30% of screen height
                  width: 30.h,
                  //It will take a 30% of screen height
                  height: 30.h,
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: const Text('Responsive Square Container'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
