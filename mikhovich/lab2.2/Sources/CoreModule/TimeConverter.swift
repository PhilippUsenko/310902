public struct TimeConverter {

    public static let hoursAndMinutesToMinutes: (Int, Int) -> Int = { hours, minutes in
        return hours * 60 + minutes
    }
    
    public static let minutesToHoursAndMinutes: (Int) -> (Int, Int) = { totalMinutes in
        let hours = totalMinutes / 60
        let minutes = totalMinutes % 60
        return (hours, minutes)
    }
}
