import 'package:crm/rowview.dart';
import 'package:flutter/material.dart';

class CreateRow extends StatefulWidget {
  @override
  _CreateRowState createState() => _CreateRowState();
}

class _CreateRowState extends State<CreateRow> {
  //number with row
  var _n;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (input){
                _n = int.parse(input);
            },
            ),
            FlatButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RowView(num: _n,)));
                },
                child: Text("Create")),

          ],
        ),
      ),
    );
  }
}
