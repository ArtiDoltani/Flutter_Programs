class PermissionModel{

PermissionModel(
  {
  required this.permission
});

List<Permission> permission;
factory PermissionModel.fromJson(Map<String, dynamic> json) => PermissionModel(
        permission: List<Permission>.from(json["permission"].map((x) => Permission.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "permission": List<dynamic>.from(permission.map((x) => x.toJson())),
      };



}
class Permission{
  int? permission_id;
  String? permission_type;
  Permission(
{
  this.permission_id,
  this.permission_type

}
  );

  
  factory Permission.fromJson(Map<String, dynamic> json) => Permission(
       permission_id: json["Permission id"],
        permission_type: json[" permission_type"],
       
        // createdAt: json["created_at"] == null
        //     ? null
        //     : DateTime.parse(json["created_at"]),
        // updatedAt: json["updated_at"] == null
        //     ? null
        //     : DateTime.parse(json["updated_at"]),
      );


Map<String, dynamic> toJson() => {
        "id": permission_id,
        "one_enable": permission_type,};
  
}
