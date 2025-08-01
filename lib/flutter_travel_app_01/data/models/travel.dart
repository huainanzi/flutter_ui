class Travel {
  Travel({
    required this.name,
    required this.location,
    required this.url,
  });

  final String name;
  final String location;
  final String url;

  static List<Travel> generateTravelBlog() {
    return [
      Travel(
          name: 'Place 1', location: "Place 1", url: "assets/images/top1.jpg"),
      Travel(
          name: 'Place 2', location: "Place 2", url: "assets/images/top2.jpg"),
      Travel(
          name: 'Place 3', location: "Place 3", url: "assets/images/top3.jpg"),
      Travel(
          name: 'Place 4', location: "Place 4", url: "assets/images/top4.jpg"),
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel(
          name: 'Place 5',
          location: "Place 5",
          url: "assets/images/bottom1.jpg"),
      Travel(
          name: 'Place 6',
          location: "Place 6",
          url: "assets/images/bottom2.jpg"),
      Travel(
          name: 'Place 7',
          location: "Place 7",
          url: "assets/images/bottom3.jpg"),
      Travel(
          name: 'Place 8',
          location: "Place 8",
          url: "assets/images/bottom4.jpg"),
    ];
  }
}
