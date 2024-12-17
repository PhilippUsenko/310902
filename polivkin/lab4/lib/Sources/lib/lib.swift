import Foundation

public protocol ProductProtocol {
    var name: String { get }
    var manufacturer: String { get }
    var price: Double { get }
    var expirationDate: Date { get }
    var quantity: Int { get }
    
    func isExpired() -> Bool
}


public class Product: ProductProtocol {
    public var name: String
    public var manufacturer: String
    public var price: Double
    public var expirationDate: Date
    public var quantity: Int
    
    public init(name: String, manufacturer: String, price: Double, expirationDate: Date, quantity: Int) {
        
        guard !name.isEmpty else {
            fatalError("Name cannot be empty.")
        } 
        
        guard !manufacturer.isEmpty else {
            fatalError("Manufacturer cannot be empty.")
        }
        
        guard price >= 0 else {
            fatalError("Price cannot be negative.")
        }
        
        guard quantity >= 0 else {
            fatalError("Quantity cannot be negative.")
        }

        self.name = name
        self.manufacturer = manufacturer
        self.price = price
        self.expirationDate = expirationDate
        self.quantity = quantity
    }
    
    public func isExpired() -> Bool {
        return expirationDate < Date()
    }
}