import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/components/recipe_list_item.dart';
import 'package:recipe_app/components/recipe_menu.dart';
import 'package:recipe_app/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, //배경색 화이트로 설정
        appBar: _buildRecipeAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Recipetitle(),
              RecipeMenu(),
              RecipeListItem("coffee", "Made Coffee"),
              RecipeListItem("burger", "Made Burger"),
              RecipeListItem("pizza", "Made Pizza")
            ],
          ),
        ));
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0, //AppBar의 그림자 효과 조정
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15), //쿠퍼티노 아이콘 사용
      ],
    );
  }
}
