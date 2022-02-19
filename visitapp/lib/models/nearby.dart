class Nearby {
  final String? nearID;
  final String title;
  final String shortDesc;
  final String star;
  final String hours;
  final String weather;
  final int? weatherIcon;
  final bool isAll;
  final List<String> imageURL;

  Nearby({
    this.weatherIcon,
    required this.star,
    required this.hours,
    required this.weather,
    required this.isAll,
    this.nearID,
    required this.title,
    required this.shortDesc,
    required this.imageURL,
  });
}

List<Nearby> allNearby = [
  Nearby(
    star: "4.5",
    weather: "Rain",
    weatherIcon: 1,
    hours: "15",
    isAll: true,
    nearID: "1",
    title: "Rize",
    shortDesc: "This is Rize.",
    imageURL: [
      "assets/images/a3.jpeg",
      "assets/images/b.jpeg",
      "assets/images/c.jpeg"
    ],
  ),
  Nearby(
    star: "3.9",
    weather: "Rain",
    weatherIcon: 1,
    hours: "18",
    isAll: false,
    nearID: "2",
    title: "Artvin",
    shortDesc: "This is Artvin.",
    imageURL: [
      "assets/images/e.jpeg",
      "assets/images/g.jpeg",
      "assets/images/m.jpeg"
    ],
  ),
  Nearby(
    star: "4.6",
    weather: "Snow",
    weatherIcon: 3,
    hours: "24",
    isAll: true,
    nearID: "3",
    title: "Erzurum",
    shortDesc: "This is Erzurum.",
    imageURL: [
      "assets/images/o.jpeg",
      "assets/images/p.jpeg",
      "assets/images/q.jpeg"
    ],
  ),
  Nearby(
    star: "4.3",
    weather: "Snow",
    weatherIcon: 3,
    hours: "11",
    isAll: true,
    nearID: "4",
    title: "Kars",
    shortDesc: "This is Kars.",
    imageURL: [
      "assets/images/r.jpeg",
      "assets/images/r2.jpeg",
      "assets/images/r3.jpeg"
    ],
  ),
  Nearby(
    star: "4.8",
    weather: "Sunny",
    weatherIcon: 2,
    hours: "7",
    isAll: true,
    nearID: "5",
    title: "İzmir",
    shortDesc: "This is İzmir.",
    imageURL: [
      "assets/images/s.jpeg",
      "assets/images/s1.jpeg",
      "assets/images/s2.jpeg"
    ],
  ),
  Nearby(
    star: "4.4",
    weather: "Sunny",
    weatherIcon: 2,
    hours: "14",
    isAll: true,
    nearID: "6",
    title: "Muğla",
    shortDesc: "This is Muğla.",
    imageURL: [
      "assets/images/s3.jpeg",
      "assets/images/s4.jpeg",
      "assets/images/s5.jpeg"
    ],
  ),
  Nearby(
    star: "4.1",
    weather: "Snow",
    weatherIcon: 3,
    hours: "16",
    isAll: true,
    nearID: "7",
    title: "Van",
    shortDesc: "This is Van.",
    imageURL: [
      "assets/images/t.jpeg",
      "assets/images/u.jpeg",
      "assets/images/v.jpeg"
    ],
  ),
  Nearby(
    star: "3.6",
    weather: "Snow",
    weatherIcon: 3,
    hours: "15",
    isAll: true,
    nearID: "8",
    title: "Ardahan",
    shortDesc: "This is Ardahan.",
    imageURL: [
      "assets/images/w.jpeg",
      "assets/images/x.jpeg",
      "assets/images/z.jpeg"
    ],
  ),
  Nearby(
    star: "4.9",
    weather: "Sunny",
    weatherIcon: 2,
    hours: "6",
    isAll: true,
    nearID: "9",
    title: "İstanbul",
    shortDesc: "This is İstanbul.",
    imageURL: [
      "assets/images/r.jpeg",
      "assets/images/e.jpeg",
      "assets/images/s5.jpeg"
    ],
  ),
  Nearby(
    star: "4.9",
    weather: "Snow",
    weatherIcon: 3,
    hours: "14",
    isAll: true,
    nearID: "10",
    title: "Ağrı",
    shortDesc: "This is Ağrı.",
    imageURL: [
      "assets/images/w.jpeg",
      "assets/images/s3.jpeg",
      "assets/images/b.jpeg"
    ],
  ),
];
