import lib
print("\n----- Program out -----\n")

var temp: [Book] = []
var library = Library()

library.add(Journal("Good Morning", "Anthony Newwell", 120, 2024, "Con. Institute of Riverholm"))
library.add(Journal("Times24", "Anthony Newwell", 24, 2022, "Writing Band"))
library.add(Journal("Mr. Hob", "Brein Moss", 135, 2007, "Writing Band"))
library.add(Journal("Genius", "Gregory Alwis", 436, 2005, "Brekham Univ."))
library.add(Encyclopedia("All about all", "US Writing Co.", 256, 2007, ["Biology","Astronomy","Geography"]))
library.add(Encyclopedia("Math and that", "Juby Blae", 344, 2022, ["Arithmetics","Geometry"]))
library.add(Encyclopedia("Anatomy", "Verm Klopser", 176, 2023, ["Outer","Inside","Micro"]))
library.add(Encyclopedia("Earth. Part 1", "Union of Scientists", 643, 2022, ["Almost Space","High in the sky","Beware: Surface", "Going Under", "Hot Core", "Metalic Ball"]))


temp = library.pick(by: {b in b.author == "Anthony Newwell"})
for i in temp{
	print(i.toString())
}
print("\n")
temp = library.pick(by: {b in b.year == 2022})
for i in temp{
	print(i.toString())
}

print("\n---------------------------\n")