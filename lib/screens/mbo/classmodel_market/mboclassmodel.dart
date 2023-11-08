class MBOClassModel {
  String? flag1;
  String? volume1;
  String? price1;
  String? price2;
  String? volume2;
  String? flag2;
  MBOClassModel(
      {this.flag1,
      this.volume1,
      this.price1,
      this.price2,
      this.volume2,
      this.flag2});
}

List<MBOClassModel> mboclasslist = [
  MBOClassModel(
      flag1: 'dc',
      volume1: '50',
      price1: '168.31',
      price2: '168.65',
      volume2: '901',
      flag2: 'dc'),
  MBOClassModel(
      flag1: 'dc',
      volume1: '450',
      price1: '168.30',
      price2: '168.70',
      volume2: '200',
      flag2: 'dc'),
  MBOClassModel(
      flag1: 'dc',
      volume1: '100',
      price1: '168.31',
      price2: '168.75',
      volume2: '100',
      flag2: 'dc'),
  MBOClassModel(
      flag1: 'dc',
      volume1: '100',
      price1: '168.22',
      price2: '168.79',
      volume2: '25',
      flag2: 'dc'),
  MBOClassModel(
      flag1: 'dc',
      volume1: '50',
      price1: '168.22',
      price2: '168.80',
      volume2: '100',
      flag2: 'dc'),
  MBOClassModel(
      flag1: 'dc',
      volume1: '50',
      price1: '168.22',
      price2: '168.80',
      volume2: '3',
      flag2: 'dc'),
  MBOClassModel(
      flag1: 'dc',
      volume1: '200',
      price1: '168.25',
      price2: '168.80',
      volume2: '1000',
      flag2: 'dc'),
  MBOClassModel(
      flag1: 'dc',
      volume1: '1',
      price1: '168.20',
      price2: '168.82',
      volume2: '100',
      flag2: 'dc'),
  MBOClassModel(
      flag1: '160.66',
      volume1: '1551',
      price1: '168.24',
      price2: '168.75',
      volume2: '6069',
      flag2: '184.84'),
  MBOClassModel(
      flag1: 'L.Lock',
      volume1: 'T.Vol',
      price1: 'A.Prc',
      price2: 'A.Prc',
      volume2: 'T.Vol',
      flag2: 'U.Cap'),
];
