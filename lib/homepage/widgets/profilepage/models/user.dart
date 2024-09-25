class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final String phoneNumber;
  final bool isDarkMode;

  const User({
    required this.imagePath,
    required this.name,
    required this.about,
    required this.email,
    required this.phoneNumber,
    required this.isDarkMode,
  });
}
