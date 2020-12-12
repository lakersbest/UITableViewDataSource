

import Foundation

class PlanetController {
    /**
     Source of truth

     `planets` is a computed property: Its a property that recieves it's value from a computation.
     */
    static var planets: [Planet] {
        let mercury = Planet(planetName: "人身壽險", diameter: 8000, dayLength: 5500, millionKMsFromSun: 100000, imageName: "mercury")

        let venus = Planet(planetName: "醫療險", diameter: 18000, dayLength: 12800, millionKMsFromSun: 200000, imageName: "venus")

        let earth = Planet(planetName: "癌症險", diameter: 15000, dayLength: 9800, millionKMsFromSun: 180000, imageName: "earth")

        let mars = Planet(planetName: "意外險", diameter: 20000, dayLength: 130000, millionKMsFromSun: 220000, imageName: "mars")

        let jupiter = Planet(planetName: "重大疾病險", diameter: 7000, dayLength: 5000, millionKMsFromSun: 110000, imageName: "jupiter")

        let saturn = Planet(planetName: "長期照顧險", diameter: 3000, dayLength: 4500, millionKMsFromSun: 7700, imageName: "saturn")

        let uranus = Planet(planetName: "年金險", diameter: 6000, dayLength: 250000, millionKMsFromSun: 8800, imageName: "uranus")

        let neptune = Planet(planetName: "投資型保險", diameter: 8000, dayLength: 350000, millionKMsFromSun: 13500, imageName: "neptune")

        let pluto = Planet(planetName: "旅遊平安險", diameter: 25000, dayLength: 15000, millionKMsFromSun: 40000, imageName: "pluto")

        return [mercury,venus,earth,mars,jupiter,saturn,uranus,neptune,pluto]
    }
}
