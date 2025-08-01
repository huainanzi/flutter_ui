class House {
  House({
    required this.name,
    required this.address,
    required this.imageUrl,
  });

  final String name;
  final String address;
  final String imageUrl;

  static List<House> generateRecommended() {
    return [
      House(
        name: "The Moon House",
        address: "P455, Chhatak, Sylhet",
        imageUrl: 'assets/images/house01.jpeg',
      ),
      House(
        name: 'The Moon House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/house02.jpeg',
      ),
    ];
  }

  static List<House> generateBestOffer() {
    return [
      House(
        name: 'The Moon House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/offer01.jpeg',
      ),
      House(
        name: 'The Moon House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/offer02.jpeg',
      ),
    ];
  }
}
