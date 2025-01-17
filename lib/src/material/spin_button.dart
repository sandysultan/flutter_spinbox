// MIT License
//
// Copyright (c) 2020 J-P Nurmi <jpnurmi@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import 'package:flutter/material.dart';

import '../spin_gesture.dart';

// ignore_for_file: public_member_api_docs

class SpinButton extends StatelessWidget {
  const SpinButton({
    Key? key,
    // required this.icon,
    // this.color,
    this.enabled = true,
    required this.step,
    this.acceleration,
    required this.interval,
    required this.onStep, required this.text,
  }) : super(key: key);

  // final Icon icon;
  final String text;
  // final Color? color;
  final bool enabled;
  final double step;
  final double? acceleration;
  final Duration interval;
  final ValueChanged<double> onStep;

  @override
  Widget build(BuildContext context) {
    return SpinGesture(
      enabled: enabled,
      step: step,
      interval: interval,
      acceleration: acceleration,
      onStep: onStep,
      child: ElevatedButton(
        // icon: icon,
        // color: color,
        // disabledColor: color,
        // iconSize: icon.size ?? 24,
        style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(249, 239, 227, 1),
          onPrimary: Colors.black,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.zero,
          maximumSize: const Size(36, 36),
          minimumSize: const Size(36, 36),
          textStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        onPressed: enabled ? () => onStep(step) : null, child: Text(text),
      ),
    );
  }
}
