import 'package:flutter/material.dart';

class RowView extends StatefulWidget {

  var num;
  RowView({this.num});

  @override
  _RowViewState createState() => _RowViewState();
}

class _RowViewState extends State<RowView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row View"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for(int i = 1; i <= widget.num; i++)
              i%2==0?Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
                child: Row(children: [Text("Row $i")],),
              ):Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: Row(children: [Text("Row $i")],),
              )

          ],
        ),
      ),
    );
  }
}
