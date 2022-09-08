class Album {
  int userId;
  int id;
  String title;
  Album({required this.id, required this.userId, required this.title});
  factory Album.fromJson(Map<String,dynamic> data){
   return Album(
     id:data['id'],
     title:data['title'],
     userId:data['userId'],
   );
  }

}