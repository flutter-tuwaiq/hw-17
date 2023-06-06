import 'package:flutter/material.dart';

class SignupThirdParty extends StatelessWidget {
  const SignupThirdParty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(right: 60),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 70, 20),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/group.png'),
                              backgroundColor: Colors.white,
                              radius: 16,
                            ),
                          ),
                          Text(
                            'Sign in with Google',
                            style: TextStyle(
                                fontFamily: 'SourseSnasPro',
                                fontStyle: FontStyle.normal,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.only(right: 60),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 70, 20),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/facebookiconblack-1.png'),
                        backgroundColor: Colors.white,
                        radius: 16,
                      ),
                    ),
                    Text(
                      'Sign in with Google',
                      style: TextStyle(
                          fontFamily: 'SourseSnasPro',
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
