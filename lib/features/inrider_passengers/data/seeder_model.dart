class SeederModel {
  final String title;
  final String subtitle;
  final String trailer;

  SeederModel({
    required this.title,
    required this.subtitle,
    required this.trailer,
  });
}

List<SeederModel> dataSeeder = [
  SeederModel(
    title: 'احمد مصطفي',
    subtitle: 'مقعد واحد . ينزل: القاهرة',
    trailer: 'نزل',
  ),
  SeederModel(
    title: 'يوسف محمد',
    subtitle: 'مقعد واحد . ينزل: رمسيس',
    trailer: 'نزل',
  ),
  SeederModel(
    title: 'سامية عمر',
    subtitle: 'مقعد واحد . ينزل: بلبيس',
    trailer: 'نزل',
  ),
];
