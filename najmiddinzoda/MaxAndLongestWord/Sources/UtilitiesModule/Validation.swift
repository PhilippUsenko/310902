public struct ValidationUtilities {
    public static let validateIntArray: ([Int]) -> Bool = { array in
        return !array.isEmpty 
    }
    
    public static let validateString: (String) -> Bool = { text in
        return text.contains { !$0.isWhitespace } 
    }
}
