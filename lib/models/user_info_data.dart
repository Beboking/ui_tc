class UserInfoData {
  final String username;
  final String accountStatus;
  final String name;
  final String photo;
  final double ics;
  final String nickName;
  final List<String> emails;
  final List<String> phones;
  final Map<String, List<String>> socialMedia;
  final List<String> websites;
  final String country;
  final String joinedDate;

  UserInfoData({
    required this.username,
    required this.accountStatus,
    required this.name,
    required this.photo,
    required this.ics,
    required this.nickName,
    required this.emails,
    required this.phones,
    required this.socialMedia,
    required this.websites,
    required this.country,
    required this.joinedDate,
  });
}

