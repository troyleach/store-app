Image.create!([
  {image_url: "http://i01.i.aliimg.com/wsphoto/v5/694500713_1/New-2015-font-b-Luxury-b-font-Analog-Fashion-Trendy-Sports-font-b-Men-b-font.jpg", product_id: 11},
  {image_url: "http://i01.i.aliimg.com/img/pb/714/493/616/616493714_529.jpg", product_id: 11},
  {image_url: "http://i00.i.aliimg.com/img/pb/412/715/622/622715412_949.jpg", product_id: 11},
  {image_url: "http://i00.i.aliimg.com/wsphoto/v0/1039357312/2013-Curren-Luxury-Analog-fashion-TRENDY-SPORT-MEN-MILITARY-STYLE-WRIST-WATCH-for-MEN-SWISS-ARMY.jpg", product_id: 11},
  {image_url: "http://static.qnm.it/www/fotogallery/628X0/197715/c1-chronograph-black-and-gold-di-concord.jpg", product_id: 11},
  {image_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTqd1FtcXh2yrnQiqTihi-eh2ktNzlLXJ6J1MLXDKTXfr0y7fX7", product_id: 1},
  {image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQc0gVLxYHRifJ9UPbBYDR2hDy-ZUAwfZPB-J8O8-avfEl9UOVb", product_id: 1},
  {image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCRTBy2QlAQ00K9Jbbpu3VTgpVuk5DlhaITRdmhxUozyCRc0nj", product_id: 1},
  {image_url: "http://cdn.thewatchgallery.com/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/m/o/montblanc_36967-sku-256643_usp_s_30077.jpg", product_id: 1},
  {image_url: "http://ecx.images-amazon.com/images/I/51ea8OX6v9L.jpg", product_id: 1},
  {image_url: "http://fc01.deviantart.net/fs71/f/2011/316/5/3/microchip_circuit_board_cuff_links_by_girlgeekboutique-d4fye25.jpg", product_id: 15},
  {image_url: "http://generalvalentine.com/wp-content/uploads/2011/04/Silver-Eject-Symbol-Computer-Key-Cufflinks-by-Creative-Dexterity.jpg", product_id: 15},
  {image_url: "http://www.geeky-gadgets.com/wp-content/uploads/2008/11/microchip-cufflinks1.jpg", product_id: 15},
  {image_url: "http://www.geeky-gadgets.com/wp-content/uploads/2008/11/apple-iii-cufflinks.jpg\n", product_id: 15},
  {image_url: "http://www.geekbecois.com/wp-content/uploads/2010/05/Bouton-manchette-apple.jpg", product_id: 15}
])
Order.create!([
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "0.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 1, product_option_id: nil, subtotal: "0.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "0.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 1, product_option_id: nil, subtotal: "0.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 1, product_option_id: nil, subtotal: "0.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "0.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "148.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: nil, tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "148.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "296.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 1, product_option_id: nil, subtotal: "148.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "296.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 1, product_option_id: nil, subtotal: "148.0", tax: "13.32", total: nil},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "296.0", tax: "26.64", total: nil},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "296.0", tax: "26.64", total: nil},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "296.0", tax: "26.64", total: "0.0"},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "0.0", tax: nil, total: nil},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "296.0", tax: "26.64", total: "322.64"},
  {product_id: 1, user_id: 1, quantity: 3, product_option_id: nil, subtotal: "7794.0", tax: "701.46", total: "8495.46"},
  {product_id: 9, user_id: 1, quantity: 2, product_option_id: nil, subtotal: "296.0", tax: "26.64", total: "322.64"},
  {product_id: 1, user_id: 4, quantity: 2, product_option_id: nil, subtotal: "5950.0", tax: "535.5", total: "6485.5"},
  {product_id: 1, user_id: 4, quantity: 2, product_option_id: nil, subtotal: "5950.0", tax: "535.5", total: "6485.5"},
  {product_id: 1, user_id: 4, quantity: 2, product_option_id: nil, subtotal: "5950.0", tax: "535.5", total: "6485.5"},
  {product_id: 1, user_id: 4, quantity: 2, product_option_id: nil, subtotal: "5950.0", tax: "535.5", total: "6485.5"},
  {product_id: 15, user_id: 4, quantity: 2, product_option_id: nil, subtotal: "49.98", tax: "4.5", total: "54.48"},
  {product_id: 9, user_id: 4, quantity: 2, product_option_id: nil, subtotal: "296.0", tax: "26.64", total: "322.64"},
  {product_id: 9, user_id: 4, quantity: 2, product_option_id: nil, subtotal: "296.0", tax: "26.64", total: "322.64"}
])
Product.create!([
  {price: "2955.0", title: "Montblanc Star Chronograph Watch", image: "http://ecx.images-amazon.com/images/I/51ea8OX6v9L.jpg", description: "Montblanc Timewalker Chronograph WBL021, Swiss Valjoux 7750, Swiss 316L Steel Case,", category: "watch", vendor_id: 1},
  {price: "27000.0", title: "Chateau Lafite 1865", image: "http://10-most.com/wp-content/uploads/2012/12/Chateau-Lafite-1865.jpg", description: "It is really so amazing that this wine is authenticated to be 150 years old. It contains 750 ml of fine wine per bottle. You can have a double-magnum bottle of this wine if you have $27,000 and if you want to have a set of this wine, then you can have it for $111,625. There is no doubt that this wine really tastes good, most of its buyers though are wine collectors.", category: "Wine", vendor_id: 4},
  {price: "45678.0", title: "Visconti Ripple H.R.H. Fountain Pen", image: "http://static0.bornrichimages.com/wp-content/uploads/2013/07/Caran-dAche-1010-Diamonds-Limited-Edition-Fountain-Pen.jpg", description: "The time tested saying says that pen is mightier than the sword. But pens around the world can be also very costly and can be equal to a fortune. These luxury pens are not only expensive and a statement of style and opulence, they can also be extremely worthy gifts. These costly and expensive pens are very attractive in their visual appeal and worth collecting. These pens are worth showing off as well as writing something on paper. Let us look at some of the few most expensive pens available for sale and collection. ", category: "Pen", vendor_id: 6},
  {price: "1650.0", title: "Gold Backpack", image: "http://coolmaterial.com/wp-content/uploads/2009/03/gold-backpack.jpg", description: "Where’s the fun in being incredibly rich unless you’re also incredibly flashy? The gold rucksack by the Billionaire Boys Club features their trademark diamond dollar pattern, making an excessively expensive item even more over the top. ", category: "Womans", vendor_id: 4},
  {price: "1945.0", title: "Gold Toilet paper", image: "http://i.dailymail.co.uk/i/pix/2013/10/22/article-2471446-18E6F60C00000578-298_638x568.jpg", description: "Your very own gold toilet paper holder with gold toilet paper. ", category: "Personal", vendor_id: 4},
  {price: "49500.0", title: "The Bovet’s Tribute To Love Watch", image: "http://www.bornrich.com/wp-content/uploads/2015/01/Bovet-Amadeo-Fleurier-43-1940x1893-300x292.jpg", description: "Valentine’s Day is when people from all over the world celebrate their loved ones, boyfriends, girlfriends and lovers. It is not an official in holiday, but that doesn’t make it less special. There are many things that couples do on this day; some go for getaways while others shower each other with gifts. Some of the most popular gifts on this special day include beautiful red roses and other sweet gifts. However, time has changed and other precious gadgets have been designed for couples who want to celebrate love on this joyous day. One such gadget is the Bovet’s $49,500 Tribute to Love Watch from the Swiss Brand; one of the world’s oldest watch manufacturers.", category: "watch", vendor_id: 2},
  {price: "99998.99", title: "Motor Scooter", image: "http://blog.motorcycle.com/wp-content/uploads/2013/07/Most-Expensive-Motorcycle-In-The-World-5.jpg", description: "Having more money than you know what to do with I suppose could be a burden. Not that I know what it feels like (nor will I ever), but just look at this. What you see here is the dream child of wealthy Turkish motorcycle enthusiast, Tarhan Telli.  His custom mythological-themed motorcycle is highlighted by a Medusa sculpture on the gas tank, with serpents reaching around to the tail section. The bike took over a year to build, utilizes a 1801cc RevTech V-Twin, pumps out 125 horses, has six gears, weighs over 700 pounds, and has a frame made entirely of gold.", category: "Vehicles", vendor_id: 4},
  {price: "25000.0", title: "Gold and diamond game boy", image: "http://mentalfloss.com/sites/default/files/styles/insert_main_wide_image/public/goldgameboy.jpg", description: "Game Boys were pretty great. But now that the classic handheld system is obsolete, getting one should be pretty cheap, right? Well, not if it happens to be covered in pieces of gold and diamond—that will cost you $25,000. Which is a bummer, because the gold and diamond is essential to the system's functionality. How can you play Pokemon Gold if the Game Boy isn’t covered in gold itself? It just doesn’t make any sense.", category: "Personal", vendor_id: 4},
  {price: "148.0", title: "Light Blue Dots Slim Fit Cotton Men's Shirt", image: "http://dynamic.forzieri.com/is/image/Forzieri/354X490TMPL?layer=comp&wid=354&hei=490&fmt=jpeg&qlt=100,0&op_sharpen=1&resMode=sharp&op_usm=1.0,0.18,7,0&iccEmbed=0&$fz_prd=is{Forzieri/fz400215-004-1x?scl=1}", description: "Made Italy", category: "men", vendor_id: 3},
  {price: "34532.0", title: "watch", image: "http://i01.i.aliimg.com/wsphoto/v5/694500713_1/New-2015-font-b-Luxury-b-font-Analog-Fashion-Trendy-Sports-font-b-Men-b-font.jpg", description: "watch", category: "men", vendor_id: 4},
  {price: "24.99", title: "Cufflinks", image: "http://www.geeky-gadgets.com/wp-content/uploads/2008/11/apple-cufflinks1.jpg", description: "When it comes to fashion accessories, men don’t have that many options when compared to the fairer sex. But that doesn’t mean they can’t spruce up their appearance.  By adding men’s cufflinks into the equation, even the blandest of wardrobes comes alive. Whether you’re going to a business meeting or out to dinner, CuffSmart’s dazzling cufflinks are sure to brighten your appearance.  Most men don’t pay attention to the ends of their sleeves. Prove to the world that you care about how you look by showing everyone you think outside of the box.", category: "men", vendor_id: 5}
])
ProductOption.create!([
  {name: "small", product_id: 4},
  {name: "medium", product_id: 4},
  {name: "large", product_id: 4},
  {name: "15-16", product_id: 9},
  {name: "16-17", product_id: 9},
  {name: "17-18", product_id: 9}
])
Vendor.create!([
  {name: "Mont Blonc", email: "blonc@yahoo.com", phone: "720-552-0720"},
  {name: "Swiss", email: "swiss@gmail.com", phone: "303-947-7348"},
  {name: "Forzieri", email: "forzieri@gmail.com", phone: "444-333-2222"},
  {name: "Billionaire Boys Club", email: "boyzz@gmail.com", phone: "343-434-4322"},
  {name: "cuffsmart", email: "cuffsmart@yahoo.com", phone: "345-999-0033"},
  {name: "Visconti Ripple", email: "test@testemail.com", phone: "322-543-8888"}
])
