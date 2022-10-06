class FoodModel {
  String imageUrls;
  String nameFood;
  String price;
  String rating;
  String mart;

  FoodModel(
      {required this.imageUrls,
      required this.nameFood,
      required this.price,
      required this.rating,
      required this.mart});
}

var foodList = [
  FoodModel(
      imageUrls:
          "https://www.piknikdong.com/wp-content/uploads/2021/11/Resep-Ayam-Geprek-Bensu-min.jpg",
      nameFood: "Ayam geprek Iwak \nPeyek",
      price: "20000",
      rating: '4.5',
      mart: "Warun Pak Iwak"),
  FoodModel(
      imageUrls:
          "https://www.teakpalace.com/image/cache/catalog/artikel/gambar-makanan-paling-enak-sate-kambing-1000x750h.jpg",
      nameFood: "Sate Madura",
      price: "25000",
      rating: '4.7',
      mart: "Warung Sate Madura"),
  FoodModel(
      imageUrls:
          "https://asset.kompas.com/crops/fP_Q5TD9BOn5G5JTnntgtDIjQMI=/53x36:933x623/750x500/data/photo/2021/10/21/6171492e1ea12.jpg",
      nameFood: "Burger Gacor",
      price: "50000", rating: '4.8',
      mart: "Warung Burger Gacor"),
  FoodModel(
      imageUrls:
      "https://www.piknikdong.com/wp-content/uploads/2021/11/Resep-Ayam-Geprek-Bensu-min.jpg",
      nameFood: "Ayam geprek Iwak \nPeyek",
      price: "20000",
      rating: '4.5',
      mart: "Warun Pak Iwak"),
  FoodModel(
      imageUrls:
      "https://www.teakpalace.com/image/cache/catalog/artikel/gambar-makanan-paling-enak-sate-kambing-1000x750h.jpg",
      nameFood: "Sate Madura",
      price: "25000",
      rating: '4.7',
      mart: "Warung Sate Madura"),
  FoodModel(
      imageUrls:
      "https://asset.kompas.com/crops/fP_Q5TD9BOn5G5JTnntgtDIjQMI=/53x36:933x623/750x500/data/photo/2021/10/21/6171492e1ea12.jpg",
      nameFood: "Burger Gacor",
      price: "50000", rating: '4.8',
      mart: "Warung Burger Gacor"),

];
