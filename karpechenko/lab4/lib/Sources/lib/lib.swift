public protocol Book{
	var name: String {get set}
	var author: String {get set}
	var cost: Int {get set}
	var year: Int {get set} 
	
	func toString() -> String
	
}

public class Journal: Book{
	public var name: String
	public var author: String
	public var cost: Int
	public var year: Int
	public var prop: String
	
	public init(){
		name = "def"
		author = "def"
		cost = 0
		year = 0	
		prop = "def"
	}
	
	public init(_ _name: String,_ _author: String,_ _cost: Int,_ _year: Int ,_ _prop:String){
		name = _name
		author = _author
		cost = _cost
		year = _year
		prop = _prop
	}
	
	public func toString() -> String{
		return "title: '" + name + "', author: '" + author + "', cost: '" + String(cost) + ", year: '" + String(year) + "', property: '" + prop + "'"
	}
}

public class Encyclopedia: Book{
	public var name: String
	public var author: String
	public var cost: Int
	public var year: Int
	public var topics: [String]
	
	public init(){
		name = "def"
		author = "def"
		cost = 0
		year = 0
		topics = ["def"]
	}
	
	public init(_ _name: String,_ _author: String,_ _cost: Int, _ _year: Int, _ _topics:[String]){
		name = _name
		author = _author
		cost = _cost
		year = _year
		topics = _topics
	}
	
	
	public func toString() -> String{
		var array: String = "["
		for i in 0...topics.count - 1{
			array += topics[i]
			if(i < topics.count - 1){ array += ","}
		}
		array += "]"
		return "title: '" + name + "', author: '" + author + "', cost: '" + String(cost) + ", year: '" + String(year) +  "', topics: '" + array + "'"
	}
}

public class Library{
	private var items: [Book]
	
	public init(){
		items = []
	}
	
	public func add(_ _book: Book){
		items.append(_book)
	}
	
	public func pick(by filter:(Book)->Bool) -> [Book]{
		var temp: [Book] = []
		for i in items{
			if(filter(i)) {temp.append(i)}
		}
		return temp
	}
	
	public func index(_ i: Int) -> Book?{
		if(i < 0 || i >= items.count){
			return nil;
		}
		return items[i]
	}
}