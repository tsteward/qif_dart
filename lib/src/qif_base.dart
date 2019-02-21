import 'dart:io';

import 'transaction.dart';

Future writeQif(String filename, List<Transaction> transactions) async {
  var file = new File(filename);
  var sink = file.openWrite();

  await sink.write('!Type:Bank\n');

  for (var transaction in transactions) {
    if (transaction.date != null) {
      await sink.write(
          'D${transaction.date.month}/${transaction.date.day}/${transaction.date.year}\n');
    }

    if (transaction.amount != null) {
      await sink.write('T${transaction.amount.toStringAsFixed(2)}\n');
    }

    if (transaction.payee != null) {
      await sink.write('P${transaction.payee}\n');
    }

    if (transaction.category != null) {
      await sink.write('L${transaction.category}\n');
    }

    if (transaction.memo != null) {
      await sink.write('M${transaction.memo}\n');
    }

    await sink.write('^\n');
  }

  await sink.flush();
  await sink.close();
}
