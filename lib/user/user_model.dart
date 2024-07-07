class UserModel {
  String firstName;
  String lastName;
  String email;
  String displayName;
  DateTime dob;
  String password;
  String scamtoPin;
  String profilePhotoUrl;
  String coverPhotoUrl;
  List estratiniFollowers;
  List estratiniFollowing;
  List scamtoContacts;
  List blockedUsers;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.displayName,
    required this.dob,
    required this.password,
    required this.scamtoPin,
    required this.profilePhotoUrl,
    required this.coverPhotoUrl,
    required this.estratiniFollowers,
    required this.estratiniFollowing,
    required this.scamtoContacts,
    required this.blockedUsers
  });
}
