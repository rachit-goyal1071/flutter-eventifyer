class Event {
  final String imagePath, title, description, location, duration, quote1, quote2;
  final List categoryIds, galleryImages, guests;

  Event(
  {
    required this.imagePath,
    required this.title,
    required this.description,
    required this.location,
    required this.duration,
    required this.quote1,
    required this.quote2,
    required this.categoryIds,
    required this.galleryImages,
    required this.guests,
}
      );
}

final innohacksEvent = Event(
  imagePath: "assets/innohacks_poster.jpeg",
  title: "Hackathon by Innogeeks",
  description: "",
  location : "CRPC Hall",
  quote1: "Young Minds ",
  quote2: "Gain the best out of this awesome opportunity",
  categoryIds: [0,2],
  duration: '40 Hrs',
  galleryImages: ["assets/inno1.jpeg","assets/inno2.jpeg","assets/inno3.jpeg","assets/inno4.jpg"],
  guests: ["guest.jpeg"]

);

final epoqueEvent = Event(
    imagePath: "assets/epoque.png",
    title: "Cultural Fest Epoque",
    description: "",
    quote1: "Fest & Fun",
    quote2: "Join this wonderful 3 day event",
    categoryIds: [0,1],
    location: 'Cricket ground, Auditorium',
    duration: '3 days',
    galleryImages: [],
    guests: ["guest.jpeg"]


);

final endeavourEvent = Event(
    imagePath: "assets/endeavour.jpeg",
    title: 'Endeavour E-Cell',
    description: "It a complete package of events like B-plan, Startup Expo, Treasure Hunt etc",
    location: "Innovation Center Ground",
    duration: "10 hrs",
    quote1: "Developing",
    quote2: "",
    categoryIds: [0,2,3,4],
    galleryImages: [],
    guests: ["guest.jpeg"]

);



final events =[innohacksEvent, epoqueEvent, endeavourEvent];