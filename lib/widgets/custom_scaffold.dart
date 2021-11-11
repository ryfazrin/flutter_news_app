import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;

  const CustomScaffold({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            body,
            _buildShortAppBar(context),
          ],
        ),
      ),
    );
  }

  Card _buildShortAppBar(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Text(
              'R',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(16.0),
      )),
    );
  }
}
