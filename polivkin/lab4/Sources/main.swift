import Foundation
import lib

func productsUnderPrice(products: [ProductProtocol], maxPrice: Double) -> [ProductProtocol] {
    return products.filter { $0.price <= maxPrice }
}


func expiredProducts(products: [ProductProtocol]) -> [ProductProtocol] {
    return products.filter { $0.isExpired() }
}



let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd-MM-yyyy"

let product1 = Product(name: "Milk", manufacturer: "Farm", price: 50.0, expirationDate: dateFormatter.date(from: "01-10-2024")!, quantity: 10)
let product2 = Product(name: "Bread", manufacturer: "Bakery", price: 30.0, expirationDate: dateFormatter.date(from: "01-11-224")!, quantity: 5)
let product3 = Product(name: "Cheese", manufacturer: "Brest Litovsk", price: 100.0, expirationDate: dateFormatter.date(from: "15-09-2024")!, quantity: 2)
let product4=Product(name: "Apples", manufacturer: "Garden", price: 20.0, expirationDate: dateFormatter.date(from: "07-12-2024")!, quantity: 60)

let productsList: [ProductProtocol] = [product1, product2, product3,product4]


let maxPrice = 60.0
let notexceedingProducts = productsUnderPrice(products: productsList, maxPrice: maxPrice)

print("Products :")
for product in productsList {
   print("\(product.name), Manufacturer: \(product.manufacturer), Expiration date: \(dateFormatter.string(from: product.expirationDate)), Quantity : \(product.quantity)")
}

print("\nProducts with a price not exceeding \(maxPrice):")
for product in notexceedingProducts {
    print("\(product.name), Manufacturer: \(product.manufacturer), Expiration date: \(dateFormatter.string(from: product.expirationDate)), Quantity : \(product.quantity)")
}


let expiredProductsList = expiredProducts(products: productsList)

print("\nExpired Products:")
for product in expiredProductsList {
    print("\(product.name), Manufacturer: \(product.manufacturer), Expiration date: \(dateFormatter.string(from: product.expirationDate)), Quantity : \(product.quantity)")
}
