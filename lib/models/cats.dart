class Cats {
  final String name;
  final String location;
  final String distance;
  final int price;
  final String height;
  final String weight;
  final String color;
  final String description;
  final String image;
  bool isInCart;

  Cats(
      {required this.name,
      required this.location,
      required this.distance,
      required this.price,
      required this.height,
      required this.weight,
      required this.color,
      required this.description,
      required this.image,
      required this.isInCart});
}

final List<Cats> catsList = [
  Cats(
    name: 'Bobtail',
    image: 'assets/images/bobtail.jpg',
    location: 'Japan',
    distance: '10 miles',
    price: 500,
    height: '10-15 inches',
    weight: '7-15 pounds',
    color: 'Various',
    isInCart: false,
    description:
        'The Bobtail is a breed of domestic cat with a distinctive "bobbed" tail.'
        'It is known for its playful and friendly personality.',
  ),
  Cats(
    name: 'Burmese',
    location: 'Burma',
    image: 'assets/images/burmese.jpg',
    distance: '15 miles',
    price: 600,
    height: '10-12 inches',
    weight: '6-12 pounds',
    color: 'Various',
    isInCart: false,
    description:
        'The Burmese is a breed of domestic cat that originated in Southeast Asia.'
        'It is known for its affectionate nature and sleek, muscular build.',
  ),
  Cats(
    name: 'Persian',
    location: 'Persia',
    image: 'assets/images/persian.jpg',
    distance: '20 miles',
    isInCart: false,
    price: 700,
    height: '10-15 inches',
    weight: '7-12 pounds',
    color: 'Various',
    description:
        'The Persian is one of the oldest and most popular breeds of domestic cats.'
        'It is known for its long, luxurious coat and sweet, gentle temperament.',
  ),
  Cats(
    name: 'Puspin',
    image: 'assets/images/puspin.jpeg',
    location: 'Philippines',
    distance: '25 miles',
    isInCart: false,
    price: 400,
    height: '8-12 inches',
    weight: '5-10 pounds',
    color: 'Various',
    description:
        'The Puspin, short for Pusang Pinoy, is a term used for domestic cats of unknown ancestry in the Philippines.'
        'They are known for their resilience and adaptability to various environments.',
  ),
  Cats(
    name: 'Scottish Fold',
    image: 'assets/images/scottish.jpg',
    location: 'Scotland',
    distance: '30 miles',
    price: 800,
    isInCart: false,
    height: '7-9 inches',
    weight: '6-13 pounds',
    color: 'Various',
    description:
        'The Scottish Fold is a breed of domestic cat with distinctive folded ears.'
        'They are known for their affectionate nature and playful demeanor.',
  ),
  Cats(
    name: 'Siamese',
    image: 'assets/images/siamese.jpg',
    location: 'Thailand',
    distance: '22 miles',
    price: 750,
    isInCart: false,
    height: '8-10 inches',
    weight: '6-14 pounds',
    color: 'Various',
    description:
        'The Siamese is one of the oldest and most recognizable breeds of domestic cats.'
        'It is known for its striking blue eyes, short coat, and vocal personality.',
  ),
  Cats(
    name: 'Siberian',
    image: 'assets/images/siberian.jpg',
    location: 'Russia',
    distance: '35 miles',
    price: 900,
    isInCart: false,
    height: '9-11 inches',
    weight: '8-17 pounds',
    color: 'Various',
    description: 'The Siberian is a breed of domestic cat native to Russia.'
        'It is known for its thick, triple-layered coat and strong, muscular build.',
  ),
  Cats(
    name: 'Sphynx',
    image: 'assets/images/Sphynx.jpg',
    location: 'Canada',
    distance: '18 miles',
    price: 850,
    isInCart: false,
    height: '8-10 inches',
    weight: '6-12 pounds',
    color: 'Various',
    description:
        'The Sphynx is a breed of hairless cat known for its wrinkled skin and distinctive appearance.'
        'Despite their lack of fur, they are known for their warmth and affectionate nature.',
  ),
];
