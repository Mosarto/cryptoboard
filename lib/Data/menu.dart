class Option {
  String icon;
  String title;
  int id;

  Option({
    required this.icon,
    required this.title,
    required this.id,
  });
}

List<Option> meunuOptions = [
  Option(
    icon: 'assets/svg/home.svg',
    title: 'Home',
    id: 0,
  ),
  Option(
    icon: 'assets/svg/assets.svg',
    title: 'Assets',
    id: 1,
  ),
  Option(
    icon: 'assets/svg/chart.svg',
    title: 'Chart',
    id: 2,
  ),
  Option(
    icon: 'assets/svg/support.svg',
    title: 'Support',
    id: 3,
  ),
  Option(
    icon: 'assets/svg/reports.svg',
    title: 'Reports',
    id: 4,
  ),
  Option(
    icon: 'assets/svg/settings.svg',
    title: 'Settings',
    id: 5,
  ),
];
