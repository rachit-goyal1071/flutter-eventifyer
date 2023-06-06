import 'package:events/styleguide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/events.dart';
import '../models/guests.dart';

class EventDetailsContent extends StatelessWidget {
  // const EventDetailsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth*2),
            child: Text(
              event.title,
              style: eventWhiteTitleTextStyle,
            ),
          ),
          SizedBox(height: 10,),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth*0.24),
            child: FittedBox(
              child: Row(
                children: <Widget>[
                  Text("_",style: eventLocationTextStyle.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                   ),
                  ),
                  Icon(Icons.location_on,color: Colors.white,size: 15,),
                  SizedBox(width: 5,),
                  Text(event.location,
                    style: eventLocationTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("DIGNITORIES", style: guestTextStyle,),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for(final guest in guests)
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipOval(
                      child: Image.asset(
                        guest.imagePath,
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: event.quote1,style: quote1TextStyle,),
                  TextSpan(text: event.quote2,style: quote2TextStyle)
                ]
              ),
            ),
          ),
          if(event.description.isNotEmpty) 
            Padding(
                padding: const EdgeInsets.all(16),
                child: Text(event.description, style: eventLocationTextStyle,),
            ),
          if (event.galleryImages.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 16.0,bottom: 16),
            child: Text(
              "GALLERY",style: guestTextStyle,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for(final galleryImagePath in event.galleryImages)
                  Container(
                    margin: const EdgeInsets.only(left: 16.0, right: 16, bottom: 32),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        galleryImagePath,
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
