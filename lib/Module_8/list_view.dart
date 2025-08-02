import 'package:flutter/material.dart';
class ListV extends StatefulWidget {
  const ListV({super.key});

  @override
  State<ListV> createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context,index){
          return Card(
            child: ListTile(
            leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete,color: Colors.red,),
              title: Text('Arjo Barman'),
              subtitle: Text('01716398293'),
            
                    ),
          );
      }),
    );
  }
}
