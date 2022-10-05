class FoodModel {
  String imageUrls;
  String nameFood;
  String price;
  String rating;

  FoodModel(
      {required this.imageUrls,
      required this.nameFood,
      required this.price,
      required this.rating});
}

var foodList = [
  FoodModel(
      imageUrls:
          "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1600501755/dgaxnd76x1gvgll3s7tl.png",
      nameFood: "Ayam geprek Iwak Peyek",
      price: "IDR 20.000",
      rating: '4.5'),
  FoodModel(
      imageUrls:
          "https://www.teakpalace.com/image/cache/catalog/artikel/gambar-makanan-paling-enak-sate-kambing-1000x750h.jpg",
      nameFood: "Sate Madura",
      price: "IDR 25.000",
      rating: '4.7'),
  FoodModel(
      imageUrls:
          "https://asset.kompas.com/crops/fP_Q5TD9BOn5G5JTnntgtDIjQMI=/53x36:933x623/750x500/data/photo/2021/10/21/6171492e1ea12.jpg",
      nameFood: "Burger Gacor",
      price: "IDR 50.000", rating: '4.8'),
  FoodModel(
      imageUrls:
          "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1600501755/dgaxnd76x1gvgll3s7tl.png",
      nameFood: "Ayam geprek Iwak Peyek",
      price: "IDR 20.000", rating: '4.5'),
  FoodModel(
      imageUrls:
          "https://www.teakpalace.com/image/cache/catalog/artikel/gambar-makanan-paling-enak-sate-kambing-1000x750h.jpg",
      nameFood: "Sate Madura",
      price: "IDR 25.000", rating: '4.2'),
  FoodModel(
      imageUrls:
          "https://asset.kompas.com/crops/fP_Q5TD9BOn5G5JTnntgtDIjQMI=/53x36:933x623/750x500/data/photo/2021/10/21/6171492e1ea12.jpg",
      nameFood: "Burger Gacor",
      price: "IDR 50.000", rating: '5.0'),
];
