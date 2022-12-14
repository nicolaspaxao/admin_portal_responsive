class CardTopModel {
  String? title;
  String? subtitle;

  CardTopModel({
    this.title,
    this.subtitle,
  });
}

List<CardTopModel> listCardTop = <CardTopModel>[
  CardTopModel(title: 'Unresolved', subtitle: '60'),
  CardTopModel(title: 'Overdue', subtitle: '16'),
  CardTopModel(title: 'Open', subtitle: '43'),
  CardTopModel(title: 'On hold', subtitle: '64'),
];

List<CardTopModel> listSectionRight = <CardTopModel>[
  CardTopModel(title: 'Resolved', subtitle: '449'),
  CardTopModel(title: 'Received', subtitle: '426'),
  CardTopModel(title: 'Average first response time', subtitle: '33m'),
  CardTopModel(title: 'Average response time', subtitle: '3h 8m'),
  CardTopModel(title: 'Resolution within SLA', subtitle: '94%'),
];
