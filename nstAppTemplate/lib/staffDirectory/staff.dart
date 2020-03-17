class Staff {
  final String firstName;
  final String lastName;
  final String roomNumber;
  final String email;
  final String department;
  final String house;
  final String other;
  final String ext;
  final List websites;

  Staff(
    this.firstName,
    this.lastName,
    this.roomNumber,
    this.department, {
    this.email,
    this.house,
    this.websites,
    this.ext,
    this.other,
  });

  String get fullName {
    return "$firstName $lastName";
  }

  bool get hasEmail {
    return this.email != null;
  }

  bool get hasHouse {
    return this.house != null;
  }

  bool get hasWebsite {
    return this.websites != null;
  }

  bool get hasOther {
    return other != null;
  }
}

Staff staffFromJSON(Map staffMap) {
  return Staff(staffMap['firstName'], staffMap['lastName'],
      staffMap['roomNumber'], staffMap['department'],
      email: staffMap['email'],
      house: staffMap['house'],
      websites: staffMap['websites'],
      ext: staffMap['ext'],
      other: staffMap['other']);
}

List<Staff> staffListFromJSON(List staffList) => List<Staff>.generate(
    staffList.length, (index) => staffFromJSON(staffList[index]));
