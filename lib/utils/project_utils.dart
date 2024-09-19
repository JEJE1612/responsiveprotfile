class ProjectUtils {
  final String image;
  final String title;
  final String? androidLink;
  final String subtitle;
  final String? iosLink;
  final String? webLink;
  ProjectUtils(
      {required this.image,
      required this.title,
      required this.subtitle,
      this.androidLink,
      this.iosLink,
      this.webLink});
}
