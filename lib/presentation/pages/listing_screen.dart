import 'package:demo_listing/presentation/bloc/listing_bloc.dart';
import 'package:demo_listing/presentation/bloc/listing_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

class ListingScreen extends StatefulWidget {
  const ListingScreen({super.key});

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listing Page"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: buildBody(),
      bottomNavigationBar: BottomAppBar(
        child: TextButton(onPressed: () {}, child: Text('SORT & FILTER')),
      ),
    );
  }

  buildBody() {
    return BlocBuilder<ListingBloc, ListingState>(builder: (_, state) {
      if (state is ListingLoading) {
        return const Center(child: CupertinoActivityIndicator());
      }

      if (state is ListingError) {
        return const Center(
          child: Icon(Icons.refresh),
        );
      }
      final packages = state.list!.data!.packages ?? [];
      return ListView.builder(
          itemCount: packages.length,
          itemBuilder: (BuildContext context, int index) {
            return Expanded(
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Expanded(
                    child: Row(
                      children: [
                        
                        Image.network(
                          packages[index].imgUrl ??
                              "https://s3.ap-south-1.amazonaws.com/app-img-adda247/ICAR1652423009.png",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height * 0.16,
                          width: MediaQuery.of(context).size.width * 0.32,
                          // loadingBuilder: (context, child, loadingProgress) {
                          //   return Image.asset("C:/Users/Adda247/Demo/demo_listing/assets/images/ICAR1652423009.png");
                          // },
                          // errorBuilder: (BuildContext context, Object exception,
                          //     StackTrace? stackTrace) {
                          //   return Image.asset("C:/Users/Adda247/Demo/demo_listing/assets//ICAR1652423009.png");
                          // },
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 8),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      'Hinglish',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 8),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      'Hinglish',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                packages[index].title ?? "",
                                style: TextStyle(
                                  fontSize: 16,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(children: [
                                if (packages[index].testSeriesCount != 0) ...[
                                  Row(
                                    children: [
                                      Icon(Icons.book_sharp),
                                      Text(
                                          '${packages[index].testSeriesCount} Mock Tests')
                                    ],
                                  )
                                ],
                                if (packages[index].videoCount != 0) ...[
                                  Row(
                                    children: [
                                      Icon(Icons.video_camera_back),
                                      Text(
                                          '${packages[index].videoCount} Videos')
                                    ],
                                  )
                                ],
                              ]),
                              Row(children: [
                                if (packages[index].contentCount?.ebooksCount !=
                                    null) ...[
                                  Row(
                                    children: [
                                      Icon(Icons.book_sharp),
                                      Text(
                                          '${packages[index].contentCount?.ebooksCount} E-Books')
                                    ],
                                  )
                                ],
                                if (packages[index].bookCount != 0) ...[
                                  Row(
                                    children: [
                                      Icon(Icons.book_sharp),
                                      Text('${packages[index].bookCount} Books')
                                    ],
                                  )
                                ],
                              ]),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    '\u{20B9}${packages[index].maxPrice}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 2,
                                  ),
                                  Icon(Icons.discount_sharp),
                                  Text(
                                    'Offers Available',
                                    style: TextStyle(
                                      fontSize: 16,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          });
    });
  }
}
