import 'package:qif/qif.dart' as qif;

final transcations = <qif.Transaction>[
  new qif.Transaction(
      date: new DateTime(2019, 2, 3),
      amount: -15.99,
      payee: 'Outback Steakhouse',
      category: 'Dining Out',
      memo: 'Dinner'),
  new qif.Transaction(
      date: new DateTime(2019, 2, 4),
      amount: -36.12,
      payee: 'Chevron',
      category: 'Fuel'),
  new qif.Transaction(
      date: new DateTime(2019, 2, 4),
      amount: 20,
      payee: 'My Best Friend',
      category: 'Gifts',
      memo: 'Brithday Gift'),
];

main() async {
  await qif.writeQif('transactions.qif', transcations);
}
