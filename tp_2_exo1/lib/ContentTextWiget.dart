import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'nextChangeNotifier.dart';

class ContentTextWiget extends StatefulWidget {

  const ContentTextWiget(request);

  @override
  State<ContentTextWiget> createState() => _ContentTextWigetState();
}

class _ContentTextWigetState extends State<ContentTextWiget> {
  get request => request;

  @override
  Widget build(BuildContext context) {
    return Expanded (
      child:Consumer<NextChangeNotifier> (
        builder:(context, notifier,_) =>  Container(
        width: 100,
        height: 100,
        //color: Colors.blue,
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey,
                width: 1.0,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
          child: Text(
                request[notifier.index].questionText,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
        ),
      )),
    );
  }
}
