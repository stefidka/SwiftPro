import UIKit

//Matching enums and associated values

//Basic enum matching looks like this:
enum WeatherType {
    case cloudy
    case sunny
    case windy
}

let yesterday = WeatherType.cloudy

switch yesterday {
case .cloudy:
    print("It's cloudy")
case .windy:
    print("It's windy")
default:
    print("It's sunny")
}

//enum with associated value
enum Weather {
    case cloudy(coverage: Int)
    case sunny
    case windy
}

let today = Weather.cloudy(coverage: 100)

//ignoring the associated value - perfectly ok
switch today {
case .cloudy:
    print("It's cloudy")
case .windy:
    print("It's windy")
default:
    print("It's sunny")
}

//using the associated value, local constant binding using the "let" syntax
switch today {
case .cloudy(let coverage):
    print("It's cloudy with \(coverage)% coverage")
case .windy:
    print("It's windy")
default:
    print("It's sunny")
}

//creating an associated type, binding a local constant to it, but also using that binding to filter for specific values.
switch today {
case .cloudy(let coverage) where coverage < 100:
    print("It's cloudy with \(coverage)% coverage")
case .cloudy(let coverage) where coverage == 100:
    print("You must live in the UK")
case .windy:
    print("It's windy")
default:
    print("It's sunny")
}

//combine associated values and range matching
switch today {
case .cloudy(let coverage) where coverage == 0:
    print("You must live in Death Valley")
case .cloudy(let coverage) where (1...50).contains(coverage):
    print("It's a bit cloudy, with \(coverage)% coverage")
case .cloudy(let coverage) where (51...99).contains(coverage):
    print("It's very cloudy, with \(coverage)% coverage")
case .cloudy(let coverage) where coverage == 100:
    print("You must live in the UK")
case .windy:
    print("It's windy")
default:
    print("It's sunny")
}


//If you want to match associated values in a loop
let forecast: [Weather] = [.cloudy(coverage: 40), .sunny, .windy, .cloudy(coverage: 100), .sunny]

for case let .cloudy(coverage) in forecast {
    print("It's cloudy with \(coverage)% coverage")
}

//If you know the associated value and want to use it as a filter, the syntax is similar
for case .cloudy(40) in forecast {
    print("It's cloudy with 40% coverage")
}
