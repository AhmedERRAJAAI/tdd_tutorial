class User {
  const User({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.avatar,
  });

  final int id;
  final String createdAt;
  final String name;
  final String avatar;
  
  @override
  bool operator ==(other){
    return identical (this, other) || other is User && other.runtimeType == this.runtimeType && other.id == this.id;
  }
  
  @override
  int get hashCode => id.hashCode;
}


void main() {
  final now = DateTime.now();
  // DEMO DATA
  final user1 = User(id: 1, name: "name", createdAt: now.toString(), avatar: "avatar");
  final user2 = User(id: 1, name: "name", createdAt: now.toString(), avatar: "avatar");
}
