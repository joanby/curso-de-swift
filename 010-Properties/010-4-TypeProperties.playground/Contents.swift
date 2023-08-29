struct SomeStruct{
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty:Int{
        return 5
    }
}

enum SomeEnum {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty:Int{
        return 8
    }
}

class SomeClass {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty : Int {
        return 29
    }
    
    class var overrideableComputedTypeProperty: Int {
        return 105
    }
}



print(SomeStruct.storedTypeProperty)
print(SomeStruct.computedTypeProperty)

SomeStruct.storedTypeProperty = "This is another value"
print(SomeStruct.storedTypeProperty)

print(SomeEnum.computedTypeProperty)

print(SomeClass.computedTypeProperty)




struct AudioChannel {

    static let thresholdLevel = 10
    
    static var maxInputLevelForAllChannels = 0

    var currentLevel : Int = 0{
        didSet{
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            
            
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}


var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7

print(leftChannel.currentLevel)

print("Nivel máximo registrado\(AudioChannel.maxInputLevelForAllChannels)")

rightChannel.currentLevel = 11

print(rightChannel.currentLevel)

print("Nivel máximo registrado \(AudioChannel.maxInputLevelForAllChannels)")



