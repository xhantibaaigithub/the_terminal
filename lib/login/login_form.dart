import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/component_widgets/buttons/logged_out_no_halo.dart';
import 'package:terminal_mobile_app/component_widgets/buttons/register_no_halo_button.dart';
import 'package:terminal_mobile_app/user/user_model.dart';

class LoginForm extends StatefulWidget {

  LoginForm({super.key});

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
    final formkey = GlobalKey<FormState>();
    final UserModel user = UserModel(scamtoContacts: [],estratiniFollowing: [],estratiniFollowers: [] ,blockedUsers: [],firstName: 'firstName', lastName: 'lastName', email: 'email', displayName: 'displayName', dob: DateTime.now(), password: 'password', scamtoPin: 'scamtoPin',coverPhotoUrl: '', profilePhotoUrl: '');

  bool emailIsCorrectFormat = false;
  bool passwordIsEntered = false;
  final formDetails = {};

  static RegExp emailReg = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  static var emailInputController = TextEditingController();
  static var passwordInputController = TextEditingController();

  void _updateEmailState() {
    setState(() {
      emailIsCorrectFormat = emailReg.hasMatch(emailInputController.text);
    });
  }

  void _updatePasswordState() {
    setState(() {
      passwordIsEntered = passwordInputController.text.length > 6;
    });
  }

  @override
  void initState() {
    super.initState();

    emailInputController.addListener(_updateEmailState);
    passwordInputController.addListener(_updatePasswordState);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: emailInputController,
            style: TextStyle(
              fontSize: 16,
            ),
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                hintText: 'Enter your@email.address'),
            validator: (String? emailInput) {
              if (emailInput == null || emailInput.isEmpty) {
                return 'Please enter your email address here';
              }
              if (!emailReg.hasMatch(emailInput)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          TextFormField(
            controller: passwordInputController,
            style: TextStyle(
              fontSize: 16,
            ),
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                hintText: 'Enter your password'),
            validator: (String? passwordEntered) {
              var passwordInputEntered =
                  passwordEntered == null || passwordEntered.isEmpty;

              if (passwordInputEntered) {
                return 'Please enter your password';
              }
              if (passwordEntered.length < 6) {
                return 'Your password needs to be at least 6 charcters long';
              }
              if (!RegExp(r'(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])')
                  .hasMatch(passwordEntered)) {
                return 'Password must include at least one uppercase letter, one lowercase letter, one number, and one special character';
              }
              if (RegExp(r'\s').hasMatch(passwordEntered)) {
                return 'Password cannot contain spaces';
              }
              return null;
            },
          ),
          emailIsCorrectFormat && passwordIsEntered
              ? Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 35.0),
                    child: Text('Login'),
                  ),
                )
              : Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'OR',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 35.0),
                        child: LoggedOutNoHaloButton('Create account'),
                      )
                    ],
                  ),
                )
        ],
      ),
    );
  }

  @override
  void dispose() {
    emailInputController.dispose();
    passwordInputController.dispose();

    super.dispose();
  }
}
