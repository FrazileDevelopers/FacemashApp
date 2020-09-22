class Images {
  Images({
    this.imageurl,
    this.images,
  });

  String imageurl;
  List<Image> images;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        imageurl: json["imageurl"] == null ? null : json["imageurl"],
        images: json["images"] == null
            ? null
            : List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "imageurl": imageurl == null ? null : imageurl,
        "images": images == null
            ? null
            : List<dynamic>.from(images.map((x) => x.toJson())),
      };
}

class Image {
  Image({
    this.imageId,
    this.filename,
    this.score,
    this.wins,
    this.losses,
    this.dirname,
    this.downloads,
    this.performance,
  });

  String imageId;
  String filename;
  String score;
  String wins;
  String losses;
  String dirname;
  String downloads;
  String performance;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        imageId: json["image_id"] == null ? null : json["image_id"],
        filename: json["filename"] == null ? null : json["filename"],
        score: json["score"] == null ? null : json["score"],
        wins: json["wins"] == null ? null : json["wins"],
        losses: json["losses"] == null ? null : json["losses"],
        dirname: json["dirname"] == null ? null : json["dirname"],
        downloads: json["downloads"] == null ? null : json["downloads"],
        performance: json["performance"] == null ? null : json["performance"],
      );

  Map<String, dynamic> toJson() => {
        "image_id": imageId == null ? null : imageId,
        "filename": filename == null ? null : filename,
        "score": score == null ? null : score,
        "wins": wins == null ? null : wins,
        "losses": losses == null ? null : losses,
        "dirname": dirname == null ? null : dirname,
        "downloads": downloads == null ? null : downloads,
        "performance": performance == null ? null : performance,
      };
}
