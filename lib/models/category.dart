import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';

class Category{
  final int categoryId;
  final String name;
  final IconData icon;

  Category({required this.categoryId, required this.name, required this.icon});
}
 final allCategory = Category(
   categoryId: 0,
   name: "All",
   icon: Icons.search,
 );

final musicCategory = Category(
  categoryId: 1,
  name: "Music",
  icon: Icons.music_note,
);

final hackathonCategory = Category(
  categoryId: 2,
  name: "Hackathon",
  icon: Icons.laptop_chromebook_outlined,
);

final meetupCategory = Category(
  categoryId: 3,
  name: "Meetup",
  icon: Icons.groups,
);

final investorsCategory = Category(
  categoryId: 4,
  name: "Investors",
  icon: Icons.currency_rupee,
);

final categories = [
  allCategory,
  musicCategory,
  hackathonCategory,
  meetupCategory,
  investorsCategory,

];

