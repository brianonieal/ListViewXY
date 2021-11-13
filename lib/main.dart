import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListViewXY()));
}

class ListViewXY extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Horizontal & Vertical ListView'),
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //color: Colors.red, (for  background color)
                              border: Border.all(
                                color: Colors.green,
                              ), //for border color
                              //boxShadow: [BoxShadow(color: Colors.red),],
                            ),
                            child: Center(child: Text('Card $index'))),
                      );
                    }),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Text('List $index');
                  })
            ],
          ),
        ));
  }
}
