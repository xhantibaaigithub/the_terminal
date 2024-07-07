import 'package:flutter/material.dart';
import 'dart:math';
import 'package:terminal_mobile_app/component_widgets/buttons/register_no_halo_button.dart';
import 'package:terminal_mobile_app/component_widgets/datepicker/terminal_date_picker.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';
import 'package:terminal_mobile_app/user/user_model.dart';
import 'package:terminal_mobile_app/auth/firebaseAuth.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm> {
  final formKey = GlobalKey<FormState>();
  final AuthState _authState = AuthState();

  static var _firstNameInputController = TextEditingController();
  static var _lastNameInputController = TextEditingController();
  static var _emailInputController = TextEditingController();
  static var _displayNameInputController = TextEditingController();
  static var _passwordInputController = TextEditingController();
  static DateTime _dob = DateTime.now();

  DateTime date = DateTime.now();
  static DateTime today = DateTime.now();

  bool firstNameIsCorrect = false;
  bool lastNameIsCorrect = false;
  bool emailIsCorrectFormat = false;
  bool displayNameIsCorrect = false;
  bool passwordIsEntered = false;
  bool confirmPasswordIsCorrect = false;
  bool dobCorrect = false;
  bool ageValidityCheck = today.difference(_dob).inDays < 365 * 12;
  String error = '';
  bool errorState = false;

  static RegExp emailReg = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  static RegExp displayNameReg = RegExp(r'^[a-zA-Z0-9]+$');

  void _updateFirstNameState() {
    setState(() {
      firstNameIsCorrect = _firstNameInputController.text.length >= 2;
      firstNameIsCorrect
          ? user.firstName = _firstNameInputController.text.trim()
          : null;
    });
  }

  void _updateLastNameState() {
    setState(() {
      lastNameIsCorrect = _lastNameInputController.text.length >= 2;
      lastNameIsCorrect ? user.lastName = _lastNameInputController.text.trim() : null;
    });
  }

  // Function isn't called but is required to set state. A better implementation might be possible.
  void _updateDobState() {
    setState(() {
      dobCorrect = ageValidityCheck;
      dobCorrect ? user.dob = _dob : null;
    });
  }

  void _updateEmailState() {
    setState(() {
      emailIsCorrectFormat = emailReg.hasMatch(_emailInputController.text);
      emailIsCorrectFormat ? user.email = _emailInputController.text.trim() : null;
    });
  }

  void _updateDisplayNameState() {
    setState(() {
      displayNameIsCorrect = _displayNameInputController.text.length >= 2;
      displayNameIsCorrect
          ? user.displayName = _displayNameInputController.text.trim()
          : null;
    });
  }

  void _updatePasswordState() {
    setState(() {
      passwordIsEntered = _passwordInputController.text.length > 6;
      passwordIsEntered ? user.password = _passwordInputController.text.trim() : null;
    });
  }

  void _updateScamtoPinState() {
    List<int> numberSequence() {
      Random random = Random();
      List<int> numbers = [];

      for (int i = 0; i < 3; i++) {
        numbers.add(
            random.nextInt(100)); // Generates random numbers between 0 and 99
      }

      return numbers;
    }

    // setState() {
    user.scamtoPin =
        "scamto-${numberSequence()[0]}${numberSequence()[1]}${lettersSequence().toLowerCase()}${numberSequence()[2]}";
    // }
    print("Scamto pin");
  }

  String generateRandomLetter() {
    Random random = Random();
    int randomNumber =
        random.nextInt(26); // Generates a random number between 0 and 25
    String randomLetter = String.fromCharCode('A'.codeUnitAt(0) + randomNumber);

    return randomLetter;
  }

  String lettersSequence() {
    String secondSequenceChars = '';
    for (int i = 0; i < 3; i++) {
      secondSequenceChars += generateRandomLetter();
    }
    return secondSequenceChars;
  }

  UserModel user = UserModel(
      firstName: '',
      lastName: '',
      email: '',
      dob: _dob,
      displayName: '',
      scamtoPin: '',
      password: '',
      profilePhotoUrl: '',
      coverPhotoUrl: '',
      estratiniFollowers : [],
      estratiniFollowing : [],
      scamtoContacts : [],
      blockedUsers : []
  );

  @override
  void initState() {
    super.initState();
    _firstNameInputController.addListener(_updateFirstNameState);
    _lastNameInputController.addListener(_updateLastNameState);
    _displayNameInputController.addListener(_updateDisplayNameState);
    _emailInputController.addListener(_updateEmailState);
    _passwordInputController.addListener(_updatePasswordState);
    _updateScamtoPinState();
  }

  @override
  void dispose() {
    _firstNameInputController.dispose();
    _lastNameInputController.dispose();
    _emailInputController.dispose();
    _passwordInputController.dispose();
    _displayNameInputController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _firstNameInputController,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                hintText: 'First Name'),
            validator: (String? displayName) {
              if (displayName == null || displayName.isEmpty) {
                return 'Please enter your first name here';
              }
              if (!displayNameReg.hasMatch(displayName)) {
                return 'No special characters allowed';
              }
              if (displayName.length < 2) {
                return 'Your first Name needs to be at least 2 characters long';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _lastNameInputController,
            style: TextStyle(
              fontSize: 16,
            ),
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                hintText: 'Last Name'),
            validator: (String? displayName) {
              if (displayName == null || displayName.isEmpty) {
                return 'Please enter your last name here';
              }
              if (!displayNameReg.hasMatch(displayName)) {
                return 'No special characters allowed';
              }
              if (displayName.length < 2) {
                return 'Your last Name needs to be at least 2 characters long';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _emailInputController,
            style: TextStyle(
              fontSize: 16,
            ),
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                hintText: 'Email'),
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
            controller: _displayNameInputController,
            style: TextStyle(
              fontSize: 16,
            ),
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                hintText: 'Display name'),
            validator: (String? displayName) {
              if (displayName == null || displayName.isEmpty) {
                return 'Please enter your display name here';
              }
              if (!displayNameReg.hasMatch(displayName)) {
                return 'No special characters allowed';
              }
              if (displayName.length < 2) {
                return 'Your display name needs to be at least 2 characters long';
              }
              return null;
            },
          ),
          Column(
            children: <Widget>[
              TerminalDatePicker(
                date: _dob,
                onChanged: (value) {
                  setState(() {
                    _dob = value;
                  });
                  if (!ageValidityCheck) {
                    setState(() {
                      error =
                          "You're a tad young for this app. You need to be at least 12 years old. If you don't have homework to do, then go play with real toys, otherwise do your homework.";
                    });
                  } else {
                    setState(() {
                      error = '';
                    });
                  }
                },
              ),

              error.isNotEmpty
                  ? Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 11.0),
                      child: Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 16.0),
                      ),
                    )
                  : Text(""),
            ],
          ),
          TextFormField(
              controller: _passwordInputController,
              style: TextStyle(
                fontSize: 16,
              ),
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  hintText: 'Password'),
              validator: (String? passwordEntered) {
                return validatePassword(passwordEntered);
              }),
          TextFormField(
            obscureText: true,
            style: TextStyle(
              fontSize: 16,
            ),
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                hintText: 'Confirm password'),
            validator: (String? confirmPassword) {
              bool passwordConfirmed =
                  confirmPassword == _passwordInputController.text &&
                      confirmPassword != null &&
                      confirmPassword.isNotEmpty;
              if (!passwordConfirmed) {
                return 'Passwords must match';
              }

              return null;
            },
          ),
          emailIsCorrectFormat &&
                  passwordIsEntered &&
                  displayNameIsCorrect &&
                  !errorState
              ? Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 35.0),
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          boxShadow: [
                            BoxShadow(
                                color: GlobalStyles.scamtoBlue,
                                spreadRadius: 20.0,
                                offset: Offset(0, 5),
                                blurRadius: 25,
                                blurStyle: BlurStyle.inner),
                            BoxShadow(
                                color: Colors.blueGrey,
                                spreadRadius: 20.0,
                                offset: Offset(0, 5),
                                blurRadius: 35,
                                blurStyle: BlurStyle.outer),
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 10.0,
                                offset: Offset(0, 5),
                                blurRadius: 15,
                                blurStyle: BlurStyle.inner),
                          ]),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            backgroundColor: GlobalStyles.veryLightBlue,
                          ),
                          onPressed: () {
                            _authState.registerUser(user);
                          },
                          child: Text(
                            'Come through',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ),
                )
              : Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'OR',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    RegisterNoHaloButton('Login'),
                  ],
                )
        ],
      ),
    );
  }

  validatePassword(passwordEntered) => () {
        passwordEntered == null || passwordEntered.isEmpty;

        if (passwordEntered == null || passwordEntered.isEmpty) {
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
      };
}
