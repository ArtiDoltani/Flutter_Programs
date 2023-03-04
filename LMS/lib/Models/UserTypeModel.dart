class UsertypeModel{

UsertypeModel(
  {
  required this.type
});

List<UserType> type;

}
class UserType{
  int? user_id;
  String? user_type;
 UserType(
{
  this.user_id,
  this.user_type

}
  );


  factory UserType.fromJson(Map<String, dynamic> json) => UserType(
       user_id: json["user id"],
        user_type: json[" user_type"],
       
        // createdAt: json["created_at"] == null
        //     ? null
        //     : DateTime.parse(json["created_at"]),
        // updatedAt: json["updated_at"] == null
        //     ? null
        //     : DateTime.parse(json["updated_at"]),
      );


Map<String, dynamic> toJson() => {
        "user id": user_id,
        "user type": user_type,};




}