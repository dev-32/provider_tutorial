import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sm/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderTest>(
      builder:( (context, test,child )=>
       Scaffold(
         appBar: AppBar(
           title: Text('P r o v i d e r'),
           actions: [
             IconButton(onPressed: ()=>test.add(), icon: Icon(Icons.add))
           ],
         ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(test.items.last.toString()),
              ElevatedButton(onPressed:()=>test.add(), child: const Text('Add')),
              ElevatedButton(onPressed:()=>test.remove(), child: const Text('Remove')),
              TextButton(onPressed: ()=>test.add(), child: Text('Another add')),
              IconButton(onPressed: (){test.change();}, icon: Icon(test.heart,color: Colors.red,)),
            ],
          ),
        ),
      )),

    );
  }
}
