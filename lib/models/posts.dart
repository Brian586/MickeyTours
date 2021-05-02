class Post {
  final String name;
  final String price;
  final String description;
  final String imageUrl;

  Post({this.name, this.price, this.description, this.imageUrl});
}

List<Post> postList = [
  Post(
    name: "Shella",
    price: "KES 20,000 / Night",
    description: "Shella in Lamu 4 bedrooms low peak rates 20k a night",
    imageUrl: "assets/shella.jpg",
  ),
  Post(
    name: "Sopa Lodge",
    price: "KES 4,000 / Person",
    description: "@sopa lodge price is 4k per person. Plus ice cream all inclusive deal transportation n photography",
    imageUrl: "assets/sopa.jpg",
  ),
  Post(
    name: "Loldia House",
    price: "KES 14,000 / Night",
    description: "Loldia House Naivasha. Kitu safi sana.",
    imageUrl: "assets/loldia.jpg",
  ),
  Post(
    name: "2 Bedroom Nakuru",
    price: "KES 14,000 / Night",
    description: "A nice house in nakuru rates 14k 2 bedroom, very classy discounts for 2 nights and above.",
    imageUrl: "assets/1.jpg",
  ),
  Post(
    name: "Solio Lodge",
    price: "KES 18,000 / Night",
    description: "Deep in Laikipia lies the amazing Solio Lodge. A weekend getaway to this beautiful lodge is definitely a dream for every single traveller.",
    imageUrl: "assets/solio.jpg",
  ),
  Post(
    name: "Swara Cottages",
    price: "Check Price",
    description: "If you are traveling to Nanyuki check out the amazing Swara Cottages bu Maiyan. A place to be!",
    imageUrl: "assets/swara.jpg",
  ),
];