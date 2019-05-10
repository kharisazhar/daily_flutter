class EmailItem {
  EmailItem({this.title, this.description, this.avatar, this.date, this.favorite});
  final String title, description, avatar;
  final DateTime date;
  bool favorite = false;
}
