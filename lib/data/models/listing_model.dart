class ListingModel {
  Data? data;
  bool? success;
  String? response;

  ListingModel({this.data, this.success, this.response});

  ListingModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    success = json['success'];
    response = json['response'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['success'] = this.success;
    data['response'] = this.response;
    return data;
  }
}

class Data {
  List<Packages>? packages;
  int? count;
  int? sponsoredCategory;

  Data({this.packages, this.count, this.sponsoredCategory});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['packages'] != null) {
      packages = <Packages>[];
      json['packages'].forEach((v) {
        packages!.add(new Packages.fromJson(v));
      });
    }
    count = json['count'];
    sponsoredCategory = json['sponsoredCategory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.packages != null) {
      data['packages'] = this.packages!.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    data['sponsoredCategory'] = this.sponsoredCategory;
    return data;
  }
}

class Packages {
  int? id;
  bool? newPkg;
  int? testSeriesCount;
  int? bookCount;
  int? ebookCount;
  int? videoCount;
  int? olcCount;
  int? modelCount;
  String? categories;
  List<String>? categoryList;
  List<SubCategories>? subCategories;
  double? olchoursVideos;
  String? title;
  String? slugTitle;
  String? slugURL;
  bool? iosAvailable;
  int? iosPrice;
  String? courses;
  NewTags? newTags;
  bool? mahaPack;
  String? imgUrl;
  double? tax;
  int? maxPrice;
  int? price;
  int? isPrimary;
  List<Languages>? languages;
  List<String>? subjects;
  String? suggestionCat;
  List<Tags>? tags;
  bool? freeContent;
  List<HlsJson>? hlsJson;
  bool? onSale;
  bool? recommended;
  bool? freeContentAvailable;
  bool? dualValidity;
  bool? certificationIncluded;
  bool? published;
  bool? liveTest;
  List<ExamTypes>? examTypes;
  List<CourseTagList>? courseTagList;
  int? validityType;
  int? extension;
  String? extensionUnit;
  bool? freeLiveClassAvailable;
  String? linkedPkgs;
  List<Faculties>? faculties;
  String? supportNumber;
  ContentCount? contentCount;

  Packages(
      {this.id,
      this.newPkg,
      this.testSeriesCount,
      this.bookCount,
      this.ebookCount,
      this.videoCount,
      this.olcCount,
      this.modelCount,
      this.categories,
      this.categoryList,
      this.subCategories,
      this.olchoursVideos,
      this.title,
      this.slugTitle,
      this.slugURL,
      this.iosAvailable,
      this.iosPrice,
      this.courses,
      this.newTags,
      this.mahaPack,
      this.imgUrl,
      this.tax,
      this.maxPrice,
      this.price,
      this.isPrimary,
      this.languages,
      this.subjects,
      this.suggestionCat,
      this.tags,
      this.freeContent,
      this.hlsJson,
      this.onSale,
      this.recommended,
      this.freeContentAvailable,
      this.dualValidity,
      this.certificationIncluded,
      this.published,
      this.liveTest,
      this.examTypes,
      this.courseTagList,
      this.validityType,
      this.extension,
      this.extensionUnit,
      this.freeLiveClassAvailable,
      this.linkedPkgs,
      this.faculties,
      this.supportNumber,
      this.contentCount});

  Packages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    newPkg = json['newPkg'];
    testSeriesCount = json['testSeriesCount'];
    bookCount = json['bookCount'];
    ebookCount = json['ebookCount'];
    videoCount = json['videoCount'];
    olcCount = json['olcCount'];
    modelCount = json['modelCount'];
    categories = json['categories'];
    categoryList = json['categoryList'].cast<String>();
    if (json['subCategories'] != null) {
      subCategories = <SubCategories>[];
      json['subCategories'].forEach((v) {
        subCategories!.add(new SubCategories.fromJson(v));
      });
    }
    olchoursVideos = json['olchoursVideos'];
    title = json['title'];
    slugTitle = json['slugTitle'];
    slugURL = json['slugURL'];
    iosAvailable = json['iosAvailable'];
    iosPrice = json['iosPrice'];
    courses = json['courses'];
    newTags =
        json['newTags'] != null ? new NewTags.fromJson(json['newTags']) : null;
    mahaPack = json['mahaPack'];
    imgUrl = json['imgUrl'];
    tax = json['tax'];
    maxPrice = json['maxPrice'];
    price = json['price'];
    isPrimary = json['isPrimary'];
    if (json['languages'] != null) {
      languages = <Languages>[];
      json['languages'].forEach((v) {
        languages!.add(new Languages.fromJson(v));
      });
    }
    if (json['subjects'] != null) {
      subjects = json['subjects'].cast<String>();
    }
    suggestionCat = json['suggestionCat'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(new Tags.fromJson(v));
      });
    }
    freeContent = json['freeContent'];
    if (json['hlsJson'] != null) {
      hlsJson = <HlsJson>[];
      json['hlsJson'].forEach((v) {
        hlsJson!.add(new HlsJson.fromJson(v));
      });
    }
    onSale = json['onSale'];
    recommended = json['recommended'];
    freeContentAvailable = json['freeContentAvailable'];
    dualValidity = json['dualValidity'];
    certificationIncluded = json['certificationIncluded'];
    published = json['published'];
    liveTest = json['liveTest'];
    if (json['examTypes'] != null) {
      examTypes = <ExamTypes>[];
      json['examTypes'].forEach((v) {
        examTypes!.add(new ExamTypes.fromJson(v));
      });
    }
    if (json['courseTagList'] != null) {
      courseTagList = <CourseTagList>[];
      json['courseTagList'].forEach((v) {
        courseTagList!.add(new CourseTagList.fromJson(v));
      });
    }
    validityType = json['validityType'];
    extension = json['extension'];
    extensionUnit = json['extensionUnit'];
    freeLiveClassAvailable = json['freeLiveClassAvailable'];
    linkedPkgs = json['linkedPkgs'];
    if (json['faculties'] != null) {
      faculties = <Faculties>[];
      json['faculties'].forEach((v) {
        faculties!.add(new Faculties.fromJson(v));
      });
    }
    supportNumber = json['supportNumber'];
    contentCount = json['contentCount'] != null
        ? new ContentCount.fromJson(json['contentCount'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['newPkg'] = this.newPkg;
    data['testSeriesCount'] = this.testSeriesCount;
    data['bookCount'] = this.bookCount;
    data['ebookCount'] = this.ebookCount;
    data['videoCount'] = this.videoCount;
    data['olcCount'] = this.olcCount;
    data['modelCount'] = this.modelCount;
    data['categories'] = this.categories;
    data['categoryList'] = this.categoryList;
    if (this.subCategories != null) {
      data['subCategories'] =
          this.subCategories!.map((v) => v.toJson()).toList();
    }
    data['olchoursVideos'] = this.olchoursVideos;
    data['title'] = this.title;
    data['slugTitle'] = this.slugTitle;
    data['slugURL'] = this.slugURL;
    data['iosAvailable'] = this.iosAvailable;
    data['iosPrice'] = this.iosPrice;
    data['courses'] = this.courses;
    if (this.newTags != null) {
      data['newTags'] = this.newTags!.toJson();
    }
    data['mahaPack'] = this.mahaPack;
    data['imgUrl'] = this.imgUrl;
    data['tax'] = this.tax;
    data['maxPrice'] = this.maxPrice;
    data['price'] = this.price;
    data['isPrimary'] = this.isPrimary;
    if (this.languages != null) {
      data['languages'] = this.languages!.map((v) => v.toJson()).toList();
    }
    if (this.subjects != null) {
      data['subjects'] = this.subjects;
    }
    data['suggestionCat'] = this.suggestionCat;
    if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
    data['freeContent'] = this.freeContent;
    if (this.hlsJson != null) {
      data['hlsJson'] = this.hlsJson!.map((v) => v.toJson()).toList();
    }
    data['onSale'] = this.onSale;
    data['recommended'] = this.recommended;
    data['freeContentAvailable'] = this.freeContentAvailable;
    data['dualValidity'] = this.dualValidity;
    data['certificationIncluded'] = this.certificationIncluded;
    data['published'] = this.published;
    data['liveTest'] = this.liveTest;
    if (this.examTypes != null) {
      data['examTypes'] = this.examTypes!.map((v) => v.toJson()).toList();
    }
    if (this.courseTagList != null) {
      data['courseTagList'] =
          this.courseTagList!.map((v) => v.toJson()).toList();
    }
    data['validityType'] = this.validityType;
    data['extension'] = this.extension;
    data['extensionUnit'] = this.extensionUnit;
    data['freeLiveClassAvailable'] = this.freeLiveClassAvailable;
    data['linkedPkgs'] = this.linkedPkgs;
    if (this.faculties != null) {
      data['faculties'] = this.faculties!.map((v) => v.toJson()).toList();
    }
    data['supportNumber'] = this.supportNumber;
    if (this.contentCount != null) {
      data['contentCount'] = this.contentCount!.toJson();
    }
    return data;
  }
}

class SubCategories {
  int? id;
  int? categoryId;
  int? count;
  Null? course;
  Null? thumbnail;
  String? category;
  Null? vduration;

  SubCategories(
      {this.id,
      this.categoryId,
      this.count,
      this.course,
      this.thumbnail,
      this.category,
      this.vduration});

  SubCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['categoryId'];
    count = json['count'];
    course = json['course'];
    thumbnail = json['thumbnail'];
    category = json['category'];
    vduration = json['vduration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['categoryId'] = this.categoryId;
    data['count'] = this.count;
    data['course'] = this.course;
    data['thumbnail'] = this.thumbnail;
    data['category'] = this.category;
    data['vduration'] = this.vduration;
    return data;
  }
}

class NewTags {
  String? additionalTags;
  List<BusinessTags>? businessTags;

  NewTags({this.additionalTags, this.businessTags});

  NewTags.fromJson(Map<String, dynamic> json) {
    additionalTags = json['additionalTags'];
    if (json['businessTags'] != null) {
      businessTags = <BusinessTags>[];
      json['businessTags'].forEach((v) {
        businessTags!.add(new BusinessTags.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['additionalTags'] = this.additionalTags;
    if (this.businessTags != null) {
      data['businessTags'] = this.businessTags!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BusinessTags {
  int? id;
  int? createdAt;
  int? updatedAt;
  String? name;
  int? tagType;
  String? thumbnail;
  int? tagAssignedAt;

  BusinessTags(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.name,
      this.tagType,
      this.thumbnail,
      this.tagAssignedAt});

  BusinessTags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
    tagType = json['tagType'];
    thumbnail = json['thumbnail'];
    tagAssignedAt = json['tagAssignedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['name'] = this.name;
    data['tagType'] = this.tagType;
    data['thumbnail'] = this.thumbnail;
    data['tagAssignedAt'] = this.tagAssignedAt;
    return data;
  }
}

class Languages {
  int? id;
  String? name;
  bool? primary;

  Languages({this.id, this.name, this.primary});

  Languages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    primary = json['primary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['primary'] = this.primary;
    return data;
  }
}

class Tags {
  int? id;
  String? name;

  Tags({this.id, this.name});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}



class HlsJson {
  String? hlsJson;

  HlsJson({this.hlsJson});

  HlsJson.fromJson(Map<String, dynamic> json) {
    hlsJson = json['hlsJson'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hlsJson'] = this.hlsJson;
    return data;
  }
}

class ExamTypes {
  int? id;
  String? name;
  int? sequenceNo;
  int? count;
  String? thumbnail;
  String? tab;
  Null? course;
  bool? examType;
  String? webUrlId;

  ExamTypes(
      {this.id,
      this.name,
      this.sequenceNo,
      this.count,
      this.thumbnail,
      this.tab,
      this.course,
      this.examType,
      this.webUrlId});

  ExamTypes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    sequenceNo = json['sequenceNo'];
    count = json['count'];
    thumbnail = json['thumbnail'];
    tab = json['tab'];
    course = json['course'];
    examType = json['examType'];
    webUrlId = json['webUrlId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['sequenceNo'] = this.sequenceNo;
    data['count'] = this.count;
    data['thumbnail'] = this.thumbnail;
    data['tab'] = this.tab;
    data['course'] = this.course;
    data['examType'] = this.examType;
    data['webUrlId'] = this.webUrlId;
    return data;
  }
}

class CourseTagList {
  int? id;
  String? name;
  String? webUrlId;
  String? seoName;

  CourseTagList({this.id, this.name, this.webUrlId, this.seoName});

  CourseTagList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    webUrlId = json['webUrlId'];
    seoName = json['seoName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['webUrlId'] = this.webUrlId;
    data['seoName'] = this.seoName;
    return data;
  }
}

class Faculties {
  int? id;
  String? userId;
  String? name;
  String? firstName;
  Null? lastName;
  String? image;
  Null? designation;
  Null? topic;
  Null? hoursTaught;
  Null? experience;
  String? exp;
  String? subject;
  String? highlights;
  String? email;
  String? url;
  int? studentsMentored;

  Faculties(
      {this.id,
      this.userId,
      this.name,
      this.firstName,
      this.lastName,
      this.image,
      this.designation,
      this.topic,
      this.hoursTaught,
      this.experience,
      this.exp,
      this.subject,
      this.highlights,
      this.email,
      this.url,
      this.studentsMentored});

  Faculties.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    name = json['name'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    image = json['image'];
    designation = json['designation'];
    topic = json['topic'];
    hoursTaught = json['hoursTaught'];
    experience = json['experience'];
    exp = json['exp'];
    subject = json['subject'];
    highlights = json['highlights'];
    email = json['email'];
    url = json['url'];
    studentsMentored = json['studentsMentored'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['name'] = this.name;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['image'] = this.image;
    data['designation'] = this.designation;
    data['topic'] = this.topic;
    data['hoursTaught'] = this.hoursTaught;
    data['experience'] = this.experience;
    data['exp'] = this.exp;
    data['subject'] = this.subject;
    data['highlights'] = this.highlights;
    data['email'] = this.email;
    data['url'] = this.url;
    data['studentsMentored'] = this.studentsMentored;
    return data;
  }
}

class ContentCount {
  int? ebooksCount;
  int? videosCount;
  int? testSeriesCount;
  int? olcCount;
  int? booksCount;
  int? modelCount;
  double? olcDuration;

  ContentCount(
      {this.ebooksCount,
      this.videosCount,
      this.testSeriesCount,
      this.olcCount,
      this.booksCount,
      this.modelCount,
      this.olcDuration});

  ContentCount.fromJson(Map<String, dynamic> json) {
    ebooksCount = json['ebooksCount'];
    videosCount = json['videosCount'];
    testSeriesCount = json['testSeriesCount'];
    olcCount = json['olcCount'];
    booksCount = json['booksCount'];
    modelCount = json['modelCount'];
    olcDuration = json['olcDuration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ebooksCount'] = this.ebooksCount;
    data['videosCount'] = this.videosCount;
    data['testSeriesCount'] = this.testSeriesCount;
    data['olcCount'] = this.olcCount;
    data['booksCount'] = this.booksCount;
    data['modelCount'] = this.modelCount;
    data['olcDuration'] = this.olcDuration;
    return data;
  }
}
