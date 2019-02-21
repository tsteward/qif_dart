# A Dart Library for Writing QIF Files

The details of the file format can be found here:
<https://web.archive.org/web/20101201000000*/http://web.intuit.com/support/quicken/docs/d_qif.html>

## Usage

A simple usage example:

```dart
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
```

Output:

```qif
!Type:Bank
D2/3/2019
T-15.99
POutback Steakhouse
LDining Out
MDinner
^
D2/4/2019
T-36.12
PChevron
LFuel
^
D2/4/2019
T20.00
PMy Best Friend
LGifts
MBrithday Gift
^
```

## Contributing

Feel free to implement more of the file format or add writing and make
a GitHub pull request.
