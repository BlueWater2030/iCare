import 'package:flutter/material.dart';

import 'constants/constants.dart';

class PeroidContainer extends StatelessWidget {
  const PeroidContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.black,
              controller: weekController,
              decoration: InputDecoration(
                  focusColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.blue)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Please enter in which week you are',
                  floatingLabelStyle: const TextStyle(color: Colors.blue)
                  // label: Text(
                  //   'Please enter in which week you are',
                  //   style: TextStyle(fontSize: 22, color: Colors.lightBlue),
                  // )
                  ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
