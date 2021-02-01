import 'package:flutter/material.dart';
import 'package:pipl/presentation/pipl_icons.dart';
import 'package:pipl/utils/constants.dart';
import 'package:pipl/utils/widget_functions.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomepageAppBar(),
              HomePageGreeting(),
              addVerticalSpace(30.0),
              LabeledAvatarContainer(),
              addVerticalSpace(30.0),
              LabeledCategoriesContainer(),
            ],
          ),
        ),
      ),
      Align(
          alignment: Alignment.bottomRight,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.15,
                width: MediaQuery.of(context).size.width * 0.15,
                child: FloatingActionButton(
                    child: Icon(
                      Pipl.plus,
                      size: MediaQuery.of(context).size.width * 0.05,
                    ),
                    backgroundColor: kMainBlue,
                    onPressed: () {}),
              )))
    ]);
  }
}

class HomepageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: Icon(
            Pipl.search,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Pipl.setting,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

class HomePageGreeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome back, Kay',
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  .copyWith(color: Color(0xff4A94FE)),
            ),
            Text(
              "It's a great day to say hi! 👋",
              style: TextStyle(fontSize: 16.0),
            ),
          ]),
    );
  }
}

class LabeledAvatarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Quick Reach', style: Theme.of(context).textTheme.headline2),
        addVerticalSpace(kHW10),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          // height: 1.0,
          // alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Color(0xfff0f6ff),
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 4,
                    offset: Offset(0, 2.0))
              ]),
          child: Row(
            children: [
              NamedAvatar(
                avatarName: 'Lex Luthor',
                avatarUrl: 'images/pipl/pipl01.png',
              ),
              NamedAvatar(
                avatarName: 'Jane Sanders',
                avatarUrl: 'images/pipl/pipl02.png',
              ),
              NamedAvatar(
                avatarName: 'Kayode Adebayo',
                avatarUrl: 'images/pipl/pipl03.png',
              ),
              NamedAvatar(
                avatarName: 'Dominic Kane',
                avatarUrl: 'images/pipl/pipl04.png',
              )
            ],
          ),
        )
      ],
    );
  }
}

class NamedAvatar extends StatelessWidget {
  final String avatarUrl;
  final String avatarName;

  const NamedAvatar({@required this.avatarUrl, @required this.avatarName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 0.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(avatarUrl),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Container(
                // width: 100,
                child: Center(
                  child: Text(
                    avatarName,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LabeledCategoriesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Categories', style: Theme.of(context).textTheme.headline2),
        addVerticalSpace(kHW10),
        Container(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  CategoryItem(
                    categoryName: 'Friends',
                    hasImage: true,
                    color: kLightBlue,
                    iconColor: kMainBlue,
                  )
                ],
              ),
              addVerticalSpace(kHW20),
              Row(
                children: [
                  CategoryItem(
                    categoryName: 'Family',
                    hasImage: false,
                    color: kLightGreen,
                    iconColor: kMainGreen,
                  ),
                  addHorizontalSpace(kHW20),
                  CategoryItem(
                    categoryName: 'Colleagues',
                    hasImage: false,
                    color: kLightPink,
                    iconColor: kMainPink,
                  )
                ],
              ),
              addVerticalSpace(kHW20),
              Row(
                children: [
                  CategoryItem(
                    categoryName: 'Acquaintances',
                    hasImage: false,
                    color: kLightYellow,
                    iconColor: kMainYellow,
                  ),
                  addHorizontalSpace(kHW20),
                  CategoryItem(
                    categoryName: 'POI',
                    hasImage: false,
                    color: kLightPurple,
                    iconColor: kMainPurple,
                  )
                ],
              ),
              addVerticalSpace(kHW20),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final bool hasImage;
  final Color color;
  final Color iconColor;

  const CategoryItem(
      {this.categoryName,
      @required this.hasImage,
      @required this.color,
      @required this.iconColor});

  Widget setImage(hasImage) {
    if (hasImage) {
      return Image.asset(
        'images/Friends.png',
        scale: 2.8,
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryName,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                addVerticalSpace(kHW10),
                Row(children: [
                  Icon(
                    Pipl.user_double,
                    size: 40.0,
                    color: iconColor,
                  ),
                  addHorizontalSpace(kHW10),
                  Text(
                    '0 pips',
                    style: TextStyle(color: iconColor),
                  )
                ]),
              ],
            ),
            Column(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: setImage(hasImage))
              ],
            )
          ],
        ),
      ),
    );
  }
}
