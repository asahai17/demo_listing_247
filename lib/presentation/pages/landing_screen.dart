import 'package:demo_listing/presentation/bloc/listing_bloc.dart';
import 'package:demo_listing/presentation/bloc/listing_event.dart';
import 'package:demo_listing/presentation/bloc/listing_state.dart';
import 'package:demo_listing/presentation/pages/listing_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing Page'),
        
      ),
      body: Padding(
        padding: EdgeInsets.all(96),
        child: TextButton(onPressed: (){
          BlocProvider.of<ListingBloc>(context).add(const FetchList());


          Navigator.push(context, 
          MaterialPageRoute(
            builder: (context)=> const ListingScreen()
          )
          );
          

        }, child: SizedBox(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),),
        ),),
    );
  }
}