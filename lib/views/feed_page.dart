import 'package:finsire_machine_test/constants.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leadingWidth: 42,backgroundColor: kWhite,elevation: 0,
        title: Text('Feed',style: TextStyle(color: kBlack),),
        leading: Padding(
          padding: const EdgeInsets.only(top: 13,bottom: 13,left: 13),
          child: CircleAvatar(backgroundImage: AssetImage('assets/avatar.png'),radius: 15,),
        ),
        actions: [Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: Icon(Icons.add,color:kBlack,),
        ),Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: Icon(Icons.email,color: kBlack,),
        )],
      ),
      backgroundColor: kWhite,
      body: Center(
        child: Text('Feed Page'),
      ),
    );
  }
}
