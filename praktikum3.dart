void main() {
  var gifts = {'first': 'partridge', 'second': 'turtledoves', 'fifth': 1};

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Print mhs1 and mhs2
  print(mhs1);
  print(mhs2);

  // Menambahkan nama dan NIM ke dalam mhs1 dan mhs2
  mhs1['Muhammad Nurul Mustofa'] =
      '2241720022'; // Menambahkan nama dan NIM ke mhs1
  mhs2[1] = 'Muhammad Nurul Mustofa'; // Menambahkan nama ke mhs2

  // Print mhs1 dan mhs2 setelah penambahan
  print(mhs1);
  print(mhs2);
}
