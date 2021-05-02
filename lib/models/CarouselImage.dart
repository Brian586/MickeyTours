class CarouselImage {
  final String imageUrl;
  final String title;
  final String description;

  CarouselImage({this.imageUrl, this.title, this.description});
}

List<CarouselImage> carousels = [
  CarouselImage(
    imageUrl: "assets/1.jpg",
    title: "2 bedroom in Nakuru",
    description: "A nice house in nakuru rates 14k 2 bedroom, very classy discounts for 2 nights and above.",
  ),
  CarouselImage(
    imageUrl: "assets/2.jpg",
    title: "Amboseli",
    description: "Vitu moto moto amboseli. Do you have 20k for double? Hapa vitu ni safi kabisa.",
  ),
  CarouselImage(
    imageUrl: "assets/3.jpg",
    title: "Nakuru",
    description: "Hey there goes Nakuru",
  ),
];