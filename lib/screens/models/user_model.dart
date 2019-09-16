class UserModel {

  // Field
  String user_id, user_name,user_sername, username, password, status;

  // Constructor
  UserModel(this.user_id, this.user_name, this.user_sername,this.username, this.password, this.status);

  UserModel.fromJSON(Map<String, dynamic> parseJSON){
    user_id = parseJSON['user_id'];
    user_name = parseJSON['user_name'];
    user_sername = parseJSON['user_sername'];
    username = parseJSON['username'];
    password = parseJSON['password'];
    status = parseJSON['Status'];
  }

  
}