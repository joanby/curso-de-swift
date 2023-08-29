
//Int16 [-32768, 32767]
var potentialOverflow = Int16.max
//potentialOverflow += 1

potentialOverflow = potentialOverflow &+ 1

var unsignedOverflow = UInt8.max           //11111111
unsignedOverflow = unsignedOverflow &+ 1

var anotherUnsignedOverflow = UInt8.min
anotherUnsignedOverflow = anotherUnsignedOverflow &- 1


var signedOverflow = Int8.min
signedOverflow = signedOverflow &- 1
