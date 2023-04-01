import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          //language page:
          "language": "اختر اللغة",

          // on boarding page:
          "boarding title1": "اختر المنتجة",
          "boarding body1": "نحن لدينا 100 الف منتج  , اختر \n  منتجك  من  متجرنا",
          "boarding title2": "سهل وامن للشراء",
          "boarding body2": "يمكنك الدفع كاش او \n من خلال بوابات الدفع الالكترونية",
          "boarding title3": "تتبع طلبك",
          "boarding body3": "يمكنك تتبع طلبك في كل مرحلة \n وايضا التتبع من خلال الخريطة",
          "boarding title4": "توصيل سريع ",
          "boarding body4": "لدينا آلاف المنتجات، اختر \n منجتك من متجرنا",
          "boarding continue": "متابعه",
          "boarding skip" : "تجاهل",

          //Authentication:
          "sign in": "تسجيل الدخول",
          "welcome": "اهلا بك",
          "sign in title":
              "يمكنك تسجيل الدخول من خلال البريد وكلمة المرور او من خلال وسائل التواصل الاجتماعي",
          "email field": "ادخل البريد الالكتروني",
          "password field": "ادخل كلمة المرور",
          "forget password": "هل نسيت كلمة المرور",
          "no account": "ليس لديك حساب ? ",
          "email": "البريد الالكتروني",
          "password": "كلمة المرور",
          "username": "اسم المستخدم",
          "phone": "رقم الهاتف",
          "phone field": "ادخل رقم الهاتف",
          "username field": "ادخل اسم المستخدم",
          "sign up title":
              "انشاء حساب من خلال البريد وكلمة المرور او من خلال وسائل التواصل الاجتماعي",
          "have account": " لديك حساب ? ",
          "check email": "فحص البريد الالكتروني",
          "check email body": "الرجاء ادخال البريد لتلقي رمز التحقق",
          "check button": "فحص",
          "check code": "التحقق من الكود  ",
          "check code body": "الرجعاء إدخال الكود الذي تم إرساله إلى بريدك الإلكتروني",
          "resend": "إعادة إرسال",
          "verifycode not Correct": "رمز التحقق غير صحيح",
          "done": "تمت العملية بنجاح",
          "Email not found" : "البريد الإلكتروني غير موجود",
          "reset password": "إعادة تعيين كلمة المرور",
          "reset password body": "الرجاء ادخال كلمة المرور الجديدة",
          "repassword field": "أعد إدخال كلمة المرور",
          "password and repassword":"يجب أن تكون كلمة المرور متطابقة في الحقلين",
          "try another password" : "حاول مع كلمة مرور أخرى",
          "email not verified" :"بريد الإلكتروني لم يتحقق منه بعد، الرجاء الذهاب إلى صفحة التحقق من البريد",
          "ok": "حسناً",
          "cancel" : "تجاهل",

          //home screen page:
          "home": "الرئيسية",
          "favorites": "المفضلة",
          "my orders": "طلباتي",
          "settings" : "الإعدادات",
          "offers" : "العروض",
          "archive" : "الأرشيف",

          //home page:
          "find product": "ابحث عن منتج",
          "home title1" : " مفاجأة الصيف",
          "home title2" : "حسومات كبيرة",
          "categories" : "التصنيفات",
          "products for you":"منتجات لأجلك",
          "top selling products" : "المنتجات الأكثر مبيعاً",


          //items details:
          "rating" : "التقييم",
          "colors" : ":الألوان",
          "go to cart" : "اذهب إلى السلة",
          "rate this product": "قيم هذا المنتج",
          "submit" : "تم",
          "add your comment here" : "أضف ملاحظتك هنا",

          //cart page:
          "cart": "السلة",
          "cart items count1": "لديك",
          "cart items count2" : "منتج في سلتك",
          "coupon code" : "رمز الكوبون",
          "apply": "تطبيق",
          "price" : "السعر",
          "discount": "التخفيض",
          "total price" : "السعر الكلي",
          "cart empty": "السلة فارغة",

          //check out page:
          "order" : "اطلب",
          "check out" : "شيك آوت",
          "cash": "الدفع كاش",
          "choose payment" : "اختر طريقة الدفع",
          "card" : "الدفع بالبطاقة ",
          "choose delivery" : "اخر طريقة التوصيل",
          "delivery": "مع توصيل",
          "no delivery" : "بدون توصيل",
          "choose address": "اختر الموقع الذي ترغب التوصيل إليه",
          "shipping": "أجور التوصيل",
          "warning checkout" : "الرجاء اختيار طريقة الدفع وطريقة التوصيل",
          "no address title" : "لا يوجد لديك عناوين مضافة بعد",
          "no address body" : "الرجاء إدخال عنوانك قبل تثبيت الطلب",
          "order waiting" : "الطلب بانتظار موافقة صاحب المتجر",


          //settings page:
          "enable notification" : "تفعيل الإشعارات",
          "address" : "عناويني",
          "about us" : "حول متجرنا",
          "contact us" : "اتصل بنا",
          "change language": "تغيير اللغة",
          "sign out" : "تسجيل الخروج",


          //address page:
          "add address details" :"إضافة تفاصيل العنوان",
          "map" : "الخريطة",
          "address details" :" تفاصيل العنوان",
          "address name" : "اسم العنوان",
          "address citly" :"المدينة",
          "address street" : "الشارع",
          "address building" : "البناء",
          "save": "حفظ",


          // exit alert dialog:
          "warning" : "تنبيه",
          "exit app" :"هل تريد الخروج من التطبيق؟",
          "yes" : "نعم",
          "no" : "لا",

          //validatite input:
          "not valid username": "الرجاء إدخال اسم مستخدم حقيقي",
          "not valid Email":"الرجاء إدخال إيميل حقيقي",
          "not valid phone": "الرجاء إدخال رقم هاتف صحيح",
          "can't be empty":"لا يمكن أن يكون هذا الحقل فارغاً",
          "can't be less than ": "لا يمكن أن يكون عدد الأحرف أقل من  ",
          "can't be more than ": "لا يمكن أن يكون عدد الأحرف أكثر من  ",

          "archived orders" : "الطلبات المؤرشفة ",
          "order deatils" : "تفاصيل الطلب",
          "order id" : "رقم الطلب:",
          "delivery type" : "نوع التوصيل:",
          "date" : "التاريخ: ",
          "payment method" : "طريقة الدفع: ",
          "details" : "التفاصيل",
          "delete" : "حذف",
          //"no delivery" : "بدون توصيل",
          "yes delivery" : "مع توصيل",
          "item" : "المنتج",
          "quantity" : "الكمية",
          "pending" : "معلق",
          "approved" : "موافق عليه",
          "preparing" : "قيد التحضير",
          "deliverying" : "قيد التوصيل",
          "arrived" : "واصل" ,
          "archived" : "مؤرشف",
          "shipping address" : "عنوان التوصيل",
        },

        "en": {
          //language:
          "language": "Choose Language",


          //on boarding page:
          "boarding title1": "Choose Product",
          "boarding body1":
              "We Have a 100k Product , Choose \n Your Product From  Our \n E-commerce Shop",
          "boarding title2": "Easy And Safe Paymnet",
          "boarding body2": "You can pay in cash \n or through payment gateways",
          "boarding title3": "Track Your Order",
          "boarding body3":
              "The order can be tracked at every stage \n until it reaches you",
          "boarding title4": "Fast delivery",
          "boarding body4":
              "We have a 100k products, choose \n your product from our \n E-commerce shop",
          "boarding continue": "Continue",
          "boarding skip": "skip",


          //authentication:
          "sign in": "Sign In",
          "welcome": "Welcome Back",
          "sign in title":
              "Sign In Your Email And Password Or  Continue With Social Media",
          "email field": "Enter Your Email",
          "password field": "Enter Your Password",
          "forget password": "Forget Password",
          "no account": "Don't Have An Account ? ",
          "sign up": "Sign Up",
          "email": "Email",
          "password": "Password",
          "username": "Username",
          "phone": "Phone",
          "phone fiel": "Enter Your Phone",
          "username field": "Enter Your Username",
          "sign up title":
              "Sign Up With Your Email And Password OR Continue With Social Media",
          "have account": " have an account ? ",
          "check email": "Check Email",
          "sign up success": "Account successfully created",
          "check email body": "please Enter Your Email Address To Recive A verification code",
          "check button": "check",
          "check code": "Check Code",
          "check code body": "Enter code that you recived in your email: ",
          "resend": "Resend",
          "verifycode not Correct" : "verifycode not Correct",
          "done": "done",
          "Email not found": "Email not found",
          "reset password": "Reset Password",
          "reset password body": "Please Enter a new Password",
          "repassword field": "Re enter your Password",
          "password and repassword":"password and repassword have to be the same",
          "try another password": "please try another password",
          "email not verified" :"your email need to verify, please go to checkemail page",
          "ok": "ok",
          "cancel" : "cancel",


          // home screen page:
          "home": "Home",
          "favorites": "Favorites",
          "my orders": "My orders",
          "settings" : "Settings",
          "offers" : "Offers",
          "archive" : "Archive",

          //home page:
          "find product": "Find product",
          "home title1" : "A Summer Surprise",
          "home title2" : "Big Sale",
          "categories" : "Categories:",
          "products for you":"Products for you:",
          "top selling products" : "Top selling products:",

          //items details page:
          "rating" : "Rating",
          "colors" : "Colors:",
          "go to cart" : "Go to Cart",
          "rate this product" : "Rate this product",
          "submit" : "Submit",
          "add your comment here" : "add your comment here",

          //cart page:
          "cart": "Cart",
          "cart items count1": "you have ",
          "cart items count2" : "items in your cart",
          "coupon code" : "Coupone Code",
          "apply": "Apply",
          "price" : "Price",
          "discount": "discount",
          "total price" : "Total Price",
          "order" : "Order",
          "cart empty" : "your cart is empty",


          //check out page:
          "check out" : "Check Out",
          "choose payment" : "Choose Payment method",
          "cash": "Cash Payment",
          "card" : "Card Payment",
          "choose delivery" : "Choose delivery method",
          "delivery": "Delivery",
          "no delivery" : "No Delivery",
          "choose address" : "choose your address",
          "shipping": "Shipping",
          "warning checkout" : "please choose payment and delivery methods",
          "no address title" : "No Address found",
          "no address body" : "please add your address",
          "order waiting" : "the order is waiting admin to approve",


          //settings page:
           "enable notification" : "Enable Notification",
          "address" : "Address",
          "about us" : "About  Us",
          "contact us" : "Contact Us",
          "change language" : "Change Languae",
          "sign out" : "Sign Out",


          //address page:
          "add address details" :"Add Details",
          "map" : "Map",
          "address details" :"Address Details",
          "address name" : "Address name",
          "address citly" :"Address city",
          "address street" : "Address street",
          "address building" : "Address building",
          "save": "Save",

          // exit alert dialog:
          "warning" : "Warning",
          "exit app" :"do you want to exit app",
          "yes" : "Yes",
          "no" : "No",


          // validate input:
          "not valid username": "Please enter a true username",
          "not valid Email":"Please enter a true email",
          "not valid phone": "Please enter a true phone number",
          "can't be empty":"can't be empty",
          "can't be less than ": "can't be less than ",
          "can't be more than ": "can't be more than ",

          //orders:
          "archived orders" : "Archived Orders",
          "order deatils" : "Order Details",
          "order id" : "Order ID: ",
          "delivery type" : "Delivery Type: ",
          "date" : "Date: ",
          "payment method" : "Payment Method: ",
          "details" : "Details",
          "delete" : "Delete",
          //"no delivery" : "no delivery",
          "yes delivery" : "delivery",
          "item" : "Item",
          "quantity" : "Quantity",
          "pending" : "pending",
          "approved" : "approved",
          "preparing" : "preparing",
          "deliverying" : "deliverying",
          "arrived" : "arrived" ,
          "archived" : "archived",
          "shipping address" : "Shipping Address",
          


        }
      };
}
