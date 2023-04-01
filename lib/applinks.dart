class AppLink{
  //static const String server = "http://10.0.2.2/ecommerce";
  static const String server = "https://mediatorial-prefixe.000webhostapp.com/ecommerce";


  //images:
  static const String categoriesImages = "$server/upload/categories";
  static const String itemsImages      = "$server/upload/items";


  //auth:
  static const String signup = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifycode = "$server/auth/verifycode.php";
  static const String resendverifycode = "$server/auth/resendverifycode.php";
  static const String checkemail = "$server/auth/checkemail.php";
  static const String resetpassword = "$server/auth/resetpassword.php";

  //home:
  static const String home = "$server/home.php";

  //items:
  static const String items = "$server/items/items.php";
  static const String itemdetails = "$server/items/itemdetails.php";
  static const String searchitems = "$server/items/search.php";
  static const String offers = "$server/items/offers.php";
   static const String rating = "$server/items/rating.php";



  //favorites:
  static const String favoritesview = "$server/favorites/favoritesview.php";
  static const String addtofavorites = "$server/favorites/addtofavorites.php";
  static const String deletefromfavorites = "$server/favorites/deletefromfavorites.php";

  //cart:
  static const String cartview = "$server/cart/cartview.php";
  static const String addtocart = "$server/cart/addtocart.php";
  static const String deletefromcart = "$server/cart/deletefromcart.php";
  static const String getitemcount = "$server/cart/getitemcount.php";
  static const String coupon = "$server/cart/checkcoupon.php";

  //orders:
  static const String checkout = "$server/orders/checkout.php";
  static const String myorders = "$server/orders/myorders.php";
  static const String ordersdetails = "$server/orders/ordersdetails.php";
  static const String deleteorder = "$server/orders/deleteorder.php";
  static const String archivedorders = "$server/orders/archivedorders.php";




  //address:
  static const String addressview = "$server/address/addressview.php";
  static const String addressadd = "$server/address/addressadd.php";
  static const String addressdelete = "$server/address/addressdelete.php";



  




}