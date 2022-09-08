class Album {
  int userId= 1;
  int id=1;
  String title= "quidem molestiae enim";
  Album({required this.id, required this.userId, required this.title});
  factory Album.fromJson(Map<String,dynamic> data){
    return Album(id: data['id'], userId: data['userId'], title: data['title']);
  }

}