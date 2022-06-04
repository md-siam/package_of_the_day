class UserModel {
  final String name;
  final String location;
  final String imageURL;
  bool isLiked;
  UserModel({
    required this.name,
    required this.location,
    required this.imageURL,
    required this.isLiked,
  });
}

List<UserModel> userList = [
  UserModel(
    name: 'Pratap Kumar',
    location: 'New York',
    isLiked: true,
    imageURL:
        'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ),
  UserModel(
    name: 'Jagadeesh',
    location: 'Florida',
    isLiked: false,
    imageURL:
        'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ),
  UserModel(
    name: 'Srinivas',
    location: 'California',
    isLiked: false,
    imageURL:
        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ),
  UserModel(
    name: 'Narendra',
    location: 'Texus',
    isLiked: false,
    imageURL:
        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ),
  UserModel(
    name: 'Sravan ',
    location: "Calkata",
    isLiked: true,
    imageURL:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  ),
  UserModel(
    name: 'Ranganadh',
    location: 'Siberia',
    isLiked: true,
    imageURL:
        'https://images.unsplash.com/photo-1619895862022-09114b41f16f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  ),
  UserModel(
    name: 'Vincent',
    location: 'Dhaka',
    isLiked: true,
    imageURL:
        'https://images.unsplash.com/photo-1499887142886-791eca5918cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  ),
  UserModel(
    name: 'miriam',
    location: 'New Delhi',
    isLiked: true,
    imageURL:
        'https://images.unsplash.com/photo-1534180477871-5d6cc81f3920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  ),
  UserModel(
    name: 'Lucy',
    location: 'Sydney',
    isLiked: false,
    imageURL:
        'https://images.unsplash.com/photo-1544168190-79c17527004f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  ),
  UserModel(
    name: 'Agnes',
    location: 'Canberra',
    isLiked: false,
    imageURL:
        'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  ),
  UserModel(
    name: 'Anthony',
    location: 'Istambul',
    isLiked: true,
    imageURL:
        'https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  ),
  UserModel(
    name: 'John',
    location: 'Barlain',
    isLiked: true,
    imageURL:
        'https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  ),
];
