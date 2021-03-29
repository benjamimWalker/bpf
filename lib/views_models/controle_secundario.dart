import 'package:flutter/material.dart';

import 'package:bpf/widgets/controle_tile.dart';

class ControlSecondary extends StatelessWidget {
  final String title;
  final String imgUrl;
  final List<ControlTile> registerList;
  const ControlSecondary({
    this.title,
    this.imgUrl,
    this.registerList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, right: 5, bottom: 10),
            child: SafeArea(
                child: Row(
              children: [
                Image.asset(
                  imgUrl,
                  height: 60,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Text(
                    title,
                    softWrap: true,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            )),
            color: Theme.of(context).accentColor,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(50, 165, 165, 205),
              borderRadius: BorderRadius.all(Radius.circular(22)),
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none),
                    )),
                Expanded(
                  flex: 0,
                  child: IconButton(
                      icon: Icon(Icons.search, color: Colors.grey),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
          Expanded(
            // PROVAVELMENTE TERÁ QUE PASSAR PARA BUILDER
            // PRECISASARÁ DO MODELO DO USUÁRIO E DE DADOS DESSE MODELO
            child: ListView(padding: EdgeInsets.all(7), children: registerList),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
