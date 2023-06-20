class GroceryModel{
  //data Type
  int? id;
  String? name;
  String? category;
  String? imageURL;

// constructor
  GroceryModel(
      {
        this.id,
        this.name,
        this.category,
        this.imageURL
      }
      );

  //method that assign values to respective datatype vairables
  GroceryModel.fromJson(Map<String,dynamic> json)
  {
    id = json['id'];
    name =json['name'];
    category = json['category'];
    imageURL = json['imageUrl'];
  }
}