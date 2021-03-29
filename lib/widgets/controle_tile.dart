import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ControlTile extends StatelessWidget {
  final DateTime date;
  final String imageUrl;
  final String name;
  final String verifier;

  const ControlTile({this.date, this.imageUrl, this.name, this.verifier = ''});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
                radius: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat("d 'de' MMMM 'de' y", 'pt_BR').format(date),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Responsável: $name'),
                  Text(
                    verifier,
                    style: TextStyle(color: Theme.of(context).accentColor),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
