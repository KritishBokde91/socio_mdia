class BookmarkData {
  BookmarkData._internal();
  static final BookmarkData _instance = BookmarkData._internal();
  static BookmarkData get instance => _instance;
  List<String> bookmarkImage = [];
}
