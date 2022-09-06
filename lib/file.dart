

import 'package:coffee/Models/coffeeResponse.dart';

List<Map<String, dynamic>> postsResponse = [
   {
    
    'coffee': {
      'name': 'Cappuccino',
      'image':
         'https://t3.ftcdn.net/jpg/02/99/45/46/240_F_299454637_NjQBTLP29jaXlqoNT9MI8yMWW59JeDXs.jpg',
      'price':4.55,
      'content':'Espresso, Milk ,Foamed milk'
    }
  },
   {
    
    'coffee': {
      'name': 'Latte',
      'image':
        'https://as2.ftcdn.net/v2/jpg/03/25/67/61/1000_F_325676155_mosyenqYBZQX0B6U695WTa9KpCiF8kPl.jpg',
      'price':3.44,
      'content':'Espresso, Milk'

    }
  },
    {
    
    'coffee': {
      'name': 'Espresso',
      'image':
          'https://t3.ftcdn.net/jpg/02/96/03/52/240_F_296035216_FPrXi6Aozj31Hfn8D9iYuwfw2TOhVzga.jpg',
      'price':3.37,
      'content':'Caffeine'
    }
  },
   {
    
    'coffee': {
      'name': 'Americano',
      'image':
          'https://www.starbucksathome.com/mena/sites/default/files/2021-03/3-CaffeAmericano_LongShadow_Cream_1.png',
      'price':3.22,
      'content':'Espresso,Hot water'
    }
  },
   {
    
    'coffee': {
      'name': 'Mocha',
      'image':
          'https://t4.ftcdn.net/jpg/04/10/92/17/240_F_410921775_hKv8W48L77Njw1fbeq2Q6J9Tk2ve5Jtc.jpg',
      'price':1.38,
      'content':'Espresso,Chocolate, Milk-Cream '
    }
  },
   {
    
    'coffee': {
      'name': 'Hot Chocolate',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRmihLJzCc4tg7awhVnWC4ri1BCOgKVKLvdA&usqp=CAU',
      'price':2.43,
      'content':'Chocolate poweder,Milk, Water '
    }
  },
 
];
List<coffeeResponse> coffe =
   postsResponse .map((e) =>coffeeResponse.fromJson(e)).toList();
