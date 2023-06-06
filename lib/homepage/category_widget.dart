import 'package:events/app_state.dart';
import 'package:events/styleguide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/category.dart';

class CategoryWidget extends StatelessWidget {
  // const CategoryWidget({Key? key}) : super(key: key);

  final Category category;

  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategoryId == category.categoryId;


    return GestureDetector(
      onTap: (){
        if (!isSelected){
          appState.updateCategoryId(category.categoryId);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        width: 95,
        height: 90,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.white : Color(0x99FFFFFF), width: 3),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: isSelected ? Colors.white: Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              category.icon,
              color: isSelected ? Theme.of(context).primaryColor: Colors.white,
              size: 40,
            ),

            SizedBox(height: 10,),
            Text(
              category.name,
              style: isSelected ? selectedCategoryCategoryTextStyle : categoryTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
