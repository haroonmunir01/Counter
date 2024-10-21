import 'package:counter/CountProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider=Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar:AppBar(title:Text('Counter')),
      body: Center(
        child: Consumer<CountProvider>(builder: (context,value,child){
          return Text(countProvider.count.toString(),
            style: TextStyle(fontSize: 32),
          );
        },)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: Icon(Icons.add),

      ),
    );
  }
}
