class Marketnames {
  String? type;
  String? title;
  String? subtitle;
  String? volume;
  double? lastprice;
  double? changeinprice;
  List<double>? closeprices;
  double? bidvol;
  double? bid;
  double? offer;
  double? offervol;
  Marketnames({
    this.title,
    this.subtitle,
    this.type,
    this.volume,
    this.lastprice,
    this.changeinprice,
    this.closeprices,
    this.bidvol,
    this.bid,
    this.offer,
    this.offervol,
  });
  @override
  String toString() {
    return ('title  : $title , subtitle : $subtitle , Value : ');
  }
}

List<Marketnames> marketlist = [
  Marketnames(
      title: 'PSO',
      subtitle: 'Pak State Oil ltd',
      type: 'REG',
      volume: '3.58m(1.58%)',
      lastprice: 168,
      changeinprice: 5.2,
      closeprices: [160.58, 170.48],
      bidvol: 500,
      bid: 168.2,
      offer: 168.47,
      offervol: 33500),
  Marketnames(
    title: 'HASCOL',
    subtitle: 'HASCOL',
    type: 'REG',
    volume: '3.58m(1.58%)',
    lastprice: 6.47,
    changeinprice: -0.9,
    closeprices: [5.58, 7.48],
    bidvol: 500,
    bid: 6.46,
    offer: 6.47,
    offervol: 33500,
  ),
  Marketnames(
    title: 'GGL',
    subtitle: 'GGL',
    type: 'REG',
    volume: '3.58m(1.58%)',
    lastprice: 22.54,
    changeinprice: -10.9,
    closeprices: [5.58, 7.48],
    bidvol: 500,
    bid: 6.46,
    offer: 6.47,
    offervol: 33500,
  ),
  Marketnames(
    title: 'PAEL',
    subtitle: 'PAk Elektronics',
    type: 'REG',
    volume: '3.58m(1.58%)',
    lastprice: 15.2,
    changeinprice: 2.0,
    closeprices: [15.58, 17.48],
    bidvol: 500,
    bid: 6.46,
    offer: 6.47,
    offervol: 33500,
  ),
  Marketnames(
    title: 'SUGAR',
    subtitle: 'SUGAR ltd',
    type: 'REG',
    volume: '3.58m(1.58%)',
    lastprice: 75,
    changeinprice: 1.02,
    closeprices: [75.58, 77.48],
    bidvol: 500,
    bid: 76.46,
    offer: 77.47,
    offervol: 33500,
  ),
  Marketnames(
    title: 'MCB',
    subtitle: 'MCB',
    type: 'REG',
    volume: '3.58m(1.58%)',
    lastprice: 13,
    changeinprice: 01.9,
    closeprices: [15.58, 15.48],
    bidvol: 500,
    bid: 15.46,
    offer: 15.47,
    offervol: 33500,
  ),
];
