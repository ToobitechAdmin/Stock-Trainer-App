class MBPClassModel {
  String? order1;
  String? volume1;
  String? price1;
  String? price2;
  String? volume2;
  String? order2;
  MBPClassModel(
      {this.order1,
      this.volume1,
      this.price1,
      this.price2,
      this.volume2,
      this.order2});
}

List<MBPClassModel> mbpclasslist = [
  MBPClassModel(
      order1: '1',
      volume1: '1',
      price1: '168.32',
      price2: '168.65',
      volume2: '901',
      order2: '1'),
  MBPClassModel(
      order1: '2',
      volume1: '450',
      price1: '168.30',
      price2: '168.70',
      volume2: '200',
      order2: '1'),
  MBPClassModel(
      order1: '1',
      volume1: '100',
      price1: '168.25',
      price2: '168.75',
      volume2: '100',
      order2: '1'),
  MBPClassModel(
      order1: '2',
      volume1: '100',
      price1: '168.22',
      price2: '168.79',
      volume2: '25',
      order2: '3'),
  MBPClassModel(
      order1: '4',
      volume1: '50',
      price1: '168.22',
      price2: '168.80',
      volume2: '100',
      order2: '1'),
  MBPClassModel(
      order1: '1',
      volume1: '50',
      price1: '168.22',
      price2: '168.80',
      volume2: '3',
      order2: '2'),
  MBPClassModel(
      order1: '1',
      volume1: '200',
      price1: '168.15',
      price2: '168.80',
      volume2: '1000',
      order2: '1'),
  MBPClassModel(
      order1: '1',
      volume1: '1',
      price1: '168.12',
      price2: '168.82',
      volume2: '100',
      order2: '2'),
  MBPClassModel(
      order1: '160.66',
      volume1: '1551',
      price1: '168.12',
      price2: '168.75',
      volume2: '6069',
      order2: '184.84'),
  MBPClassModel(
      order1: 'L.Lock',
      volume1: 'T.Vol',
      price1: 'A.Prc',
      price2: 'A.Prc',
      volume2: 'T.Vol',
      order2: 'U.Cap'),
];
