class Book_Model {
  Book_Model(
      {required this.title,
      required this.genre,
      required this.description,
      required this.rating,
      required this.imageUrl});

  String imageUrl;
  String title;
  String description;
  String rating;
  String genre;
}

List<Book_Model> book_models = [
  Book_Model(
      title: 'Watchmen',
      genre: 'SuperHero',
      description:
          'Everything you\'ve heard about this graphic novel, first published as a 12-issue series in 1986 and 1987, is true. It broke the ground; it changed the game. There is a reason people still press it into the hands of those who\'ve never read a comic before. Alan Moore\'s jaundiced deconstruction of the American superhero',
      rating: '⭐⭐⭐⭐⭐',
      imageUrl:
          'https://managecomics.s3.amazonaws.com/uploads/product/image/source-point-press-classic-pulp-sci-fi-one-shot-20220329.jpg'),
  Book_Model(
      title: 'Maus: A Survivors Tale',
      genre: 'Adventure',
      description:
          'It received the many votes it did because it remains such a standalone accomplishment — a success in both conceit (Spiegelman\'s father haltingly relates how he survived a concentration camp, with Jews rendered as mice and Nazis rendered as cats) ',
      rating: '⭐⭐⭐⭐',
      imageUrl:
          'https://today.duke.edu/sites/default/files/legacy-files/legacy_files/stories/jigsaw2.jpg'),
  Book_Model(
      title: 'Daytripper',
      genre: 'Manga',
      description:
          'The merciless way death forces us to reduce lives to narrative arcs, to turn a person\'s existence into story beats and act breaks. Daytripper is the product of a clear-eyed perspective — the kind that only emerges once death isn\'t something feared, denied or raged against, but confronted. And embraced.',
      rating: '⭐⭐⭐',
      imageUrl:
          'https://i.pinimg.com/originals/4c/a0/c2/4ca0c280a8eafbfa3a6775c4f5b1e8e7.jpg'),
  Book_Model(
      title: 'This One Summer',
      genre: 'Cartoon',
      description:
          'Comics about awkward young men struggling with adolescence are thick on the ground, which makes sense, given that the medium seems expressly suited to exploring the anxiety, self-consciousness and other ephemeral emotions that come with puberty. ',
      rating: '⭐⭐⭐⭐⭐',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/BlackCatNo1A.png/640px-BlackCatNo1A.png'),
  Book_Model(
      title: 'Sweet Tooth',
      genre: 'Nick',
      description:
          ' The Underwater Welder, a ghostly meditation on fatherhood; his superhero work at DC, Marvel and Valiant had its proponents as well.',
      rating: '⭐⭐⭐⭐⭐',
      imageUrl:
          'https://static.wikia.nocookie.net/pdsh/images/2/25/Awards2013_hof_mills.jpg/revision/latest/scale-to-width-down/400?cb=20130704215130'),
  Book_Model(
      title: 'Through The Woods',
      genre: 'Marvel',
      description:
          'Her captions and dialogue curl and bend around her characters like sinister tendrils, drawing our eye across the page and into the shadows that lurk under the bed or down the hallway or just outside the front door.',
      rating: '⭐⭐⭐',
      imageUrl:
          'https://images.squarespace-cdn.com/content/v1/539dffebe4b080549e5a5df5/1553883608979-55GUF2ZZP6RVR0356KIX/superman-32-vintage-superhero-comic-poster-museum-outlets.jpg?format=750w'),
  Book_Model(
      title: 'My Favorite Thing Is Monsters',
      genre: 'Power Ranger',
      description:
          'Her drive to recover — and her childhood love of horror films — are evident in her ferocious, semi-autobiographical work, set in Chicago in the late 1960s and starring a young girl who thinks of herself (and draws herself) as a werewolf.',
      rating: '⭐⭐⭐⭐',
      imageUrl:
          'https://www.loc.gov/static/exhibitions/comic-art/images/objects/comic-books-and-beyond-1940s-to-2000s/ca0033_standard.jpg'),
  Book_Model(
      title: 'Jimmy Corrigan',
      genre: 'Action',
      description:
          'Bright colors, clean lines, simple shapes — a Chris Ware comics page is meticulously designed to invite the eye in, echoing the feel of a beloved picture book from your earliest childhood. And then you read the thing and — oof.',
      rating: '⭐⭐⭐⭐⭐',
      imageUrl:
          'https://cdn.vox-cdn.com/thumbor/P9BFg60Hx8QXOWgPs4o62tcSZSk=/1400x0/filters:no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/18303898/Action_Comics_Vol_1_1000.jpg'),
  Book_Model(
      title: 'Blacksad',
      genre: 'Comedy',
      description:
          'It takes a village: Blacksad is a French comic by two Spaniards — writer Juan Diaz Canales and artist Juanjo Guarnido — who\'ve crafted a hard-boiled noir set in an America',
      rating: '⭐⭐',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/1/1e/Front_cover%2C_%22Wow_Comics%22_no._38_%28art_by_Jack_Binder%29.jpg'),
  Book_Model(
      title: 'How To Be Happy',
      genre: 'Action',
      description:
          '"Find the stories that help you comprehend the incomprehensible," one of her characters says. "Find the stories that make you stronger."',
      rating: '⭐⭐⭐⭐⭐',
      imageUrl:
          'https://the-comics-journal.sfo3.digitaloceanspaces.com/wp-content/uploads/2014/07/605a4088214f5fa2f7a733159828fcb6.jpg'),
];
