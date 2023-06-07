import 'package:events/app_state.dart';
import 'package:events/event_details/event_details_page.dart';
import 'package:events/homepage/home_page_background.dart';
import 'package:events/models/category.dart';
import 'package:events/models/events.dart';
import 'package:events/styleguide.dart';
import 'package:flutter/material.dart';
import 'category_widget.dart';
import 'package:provider/provider.dart';
import 'event_widget.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ChangeNotifierProvider<AppState>(
      create: (_) => AppState(),
      child: Stack(
        children: <Widget>[
          HomePageBackground(screenHeight: MediaQuery.of(context).size.height),
          SafeArea(
            child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Events", style: fadedTextStyle,
                      ),
                      Spacer(),
                      Icon(
                          Icons.person_outline,
                          color: Color(0x99FFFFFF),
                          size: 30,
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text("Hey what are you doing", style: whiteHeaddingTextStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Consumer<AppState>(
                    builder:  (context, appState,_) =>SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          for (final category in categories) CategoryWidget(category: category)

                        ],
                      ),
                    ),
                  ),
                ),
                Consumer<AppState>(
                  builder: (context, appState,_) =>Column(
                children: <Widget>[
                for(final event in events.where((e) => e.categoryIds.contains(appState.selectedCategoryId)))
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => EventDetailsPage(event: event))
                      );
                    },
                    child: EventWidget(event: event,))
                    ]
                  ),
                )
              ],
            ),
           ),
          ),
        ],
      ),
    ),
  );
  }
}

