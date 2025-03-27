class RoomBlockList {
  String id;
  String roomJid;
  String? displayName;
  String? phoneNumber;
  DateTime createdAt;
  DateTime updatedAt;

  RoomBlockList({
    required this.id,
    required this.roomJid,
    this.displayName,
    this.phoneNumber,
    required this.createdAt,
    required this.updatedAt,
  });
}