// The Swift Programming Language
// https://docs.swift.org/swift-book

import Snowflake
import Foundation

let snowflake = Snowflake()
print("Начальная снежинка:")
snowflake.show()

snowflake.thaw(steps: 1)
print("После таяния:")
snowflake.show()

snowflake.freeze(steps: 1)
print("После намерзания:")
snowflake.show()

snowflake.thicken()
print("После утолщения:")
snowflake.show()