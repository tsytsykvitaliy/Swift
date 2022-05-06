//
//  GrocerySections.swift
//  Tsytsyk_GroceryApp
//
//  Created by Student on 4/12/22.
//

import Foundation
import UIKit

struct GrocerySections {
    var section : String
    var items_Array : [GroceryItem]
}

struct GroceryItem {
    var itemName : String
    var itemImage : UIImage
    var itemInfo : String
}

let grocerySection1 = GrocerySections(section: "Meat", items_Array:[
                                GroceryItem(itemName: "Chicken", itemImage: UIImage.init(named: "chicken")!, itemInfo: "Chicken is the most common bird or type of poultry that is consumed. The reason why chicken is so popular is due to its versatility and low-fat content. In fact, some say that chicken is one of the most popular types of white meat in the world."),
                                    GroceryItem(itemName: "Turkey", itemImage: UIImage.init(named: "turkey")!, itemInfo: "Turkey is a large poultry bird that is in the same white meat category as chicken. Meat from turkey is a slightly darker meat than chicken but contains fewer calories."),
                                    GroceryItem(itemName: "Duck", itemImage: UIImage.init(named: "duck")!, itemInfo: "Another bird in the white meat category is duck. Even though duck meat is somewhat darker than chicken or turkey, it is still listed as white meat."),
                                    GroceryItem(itemName: "Beef", itemImage: UIImage.init(named: "beef")!, itemInfo: "Beef is the most commonly consumed type of red meat. Different cuts of beef are used for various types of steak, ground beef is made into hamburgers, and chunks of beef are good in stews. In fact, some types of beef steak such as tenderloin rank in the list of the most tender cuts of meat."),
                                    GroceryItem(itemName: "Pork", itemImage: UIImage.init(named: "pork")!, itemInfo: "Pork is actually classified as red meat due to levels of myoglobin in the meat. This is even though fresh pork is lighter in color than beef and becomes very light when cooked.")])
let grocerySection2 = GrocerySections(section: "Fruits", items_Array:[
                                    GroceryItem(itemName: "Banana", itemImage: UIImage.init(named: "banana")!, itemInfo: "The Banana is considered a tropical fruit that is famous for a lot of nutrition. It generally belongs to the Musaceae family, and it has multiple seeds inside it."),
                                    GroceryItem(itemName: "Watermelon", itemImage: UIImage.init(named: "watermelon")!, itemInfo: "Watermelons are very rich in water, almost 92 percent, and rich in other nutrients such as vitamins and antioxidants. It can be eaten as cut fruit or in the form of juice."),
                                    GroceryItem(itemName: "Kiwi", itemImage: UIImage.init(named: "kiwi")!, itemInfo: "There are more than 50 varieties of the Kiwi fruit which are growing all around the world. Some of them are seedless kiwi, red skin kiwi, yellow kiwi, etc."),
                                    GroceryItem(itemName: "Grapes", itemImage: UIImage.init(named: "grapes")!, itemInfo: "Grapes are also one of the most popular types of fruits which are chiefly used in making wines. They belong to the family of Vitaceae and grow in clusters. Their taste is usually sweet or sour."),
                                    GroceryItem(itemName: "Strawberry", itemImage: UIImage.init(named: "strawberry")!, itemInfo: "Strawberry is a red-colored fruit that belongs to the Rosaceae family. Strawberries contain more than 200 seeds on their outer surface. They are mostly cultivated in spring; they are handpicked and stored in inboxes.")])
let grocerySection3 = GrocerySections(section: "Vegetables", items_Array:[
                                    GroceryItem(itemName: "Potato", itemImage: UIImage.init(named: "potato")!, itemInfo: "Potatoes (Solanum tuberosum) are a starchy root vegetable that are among the most popular varieties of vegetable."),
                                    GroceryItem(itemName: "Carrot", itemImage: UIImage.init(named: "carrot")!, itemInfo: "Carrots are a sweet type of root vegetable, and although we mostly think of carrots as an orange root vegetable, they come in a wide range of colors. You can buy purple carrots, black ones, red varieties, and yellow carrots."),
                                    GroceryItem(itemName: "Garlic", itemImage: UIImage.init(named: "garlic")!, itemInfo: "Garlic is one of the most popular varieties of bulb vegetables that is well-known for its pungent aroma and taste."),
                                    GroceryItem(itemName: "Cabbage", itemImage: UIImage.init(named: "cabbage")!, itemInfo: "Cabbage is an example of a large leafy vegetable that can grow to the size of a soccer ball. There are many types of cabbage that include green cabbage, red cabbage, and savoy cabbage."),
                                    GroceryItem(itemName: "Peas", itemImage: UIImage.init(named: "peas")!, itemInfo: "Peas are a delicious and nutritious type of vegetable seed that come packaged in a pod. Some types of peas such as garden peas are consumed as seed vegetables without their pod. Other varieties of peas such as snow peas or sugar peas are generally eaten along with their pods.")])
let grocerySections = [grocerySection1, grocerySection2, grocerySection3]
