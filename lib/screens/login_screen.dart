import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.only(
        top: mediaQuery.size.width * 0.2,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: mediaQuery.size.height * 0.01,
              bottom: mediaQuery.size.height * 0.1,
            ),
            width: mediaQuery.size.width,
            child: Text('Grab', style: theme.textTheme.headline3),
          ),
          SizedBox(
            width: mediaQuery.size.width,
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Welcome! \n\n',
                    style: theme.textTheme.headline5.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: 'Enter your mobile number to continue.',
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: mediaQuery.size.height * 0.02),
            child: Row(
              children: [
                Container(
                  width: mediaQuery.size.width * 0.2,
                  margin: EdgeInsets.only(
                    right: mediaQuery.size.width * 0.03,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      new Radius.circular(7.0),
                    ),
                    border: Border.all(color: Colors.transparent),
                    color: Colors.white,
                  ),
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: '+63',
                        icon: Icon(Icons.flag_outlined),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        new Radius.circular(7.0),
                      ),
                      border: Border.all(color: Colors.transparent),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'XXXXX',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: mediaQuery.size.height * 0.20),
            child: Divider(
              thickness: 1.5,
              color: Colors.white,
            ),
          ),
          ButtonBar(
            buttonMinWidth: mediaQuery.size.width,
            children: [
              FlatButton.icon(
                  color: Colors.white,
                  label: Text(
                    'Continue With Facebook',
                    style: theme.textTheme.bodyText1.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.face),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(7.0),
                  )),
              FlatButton.icon(
                color: Colors.white,
                label: Text(
                  'Continue With Google',
                  style: theme.textTheme.bodyText1.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.g_translate_outlined),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(7.0),
                ),
              ),
              FlatButton.icon(
                color: Colors.white,
                label: Text(
                  'Continue With Apple',
                  style: theme.textTheme.bodyText1.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.api),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(7.0),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
