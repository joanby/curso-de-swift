//Operador unario prefijo NOT
//UInt8 es un entero de 8 bits que puede guardar números desde 0 hasta 255
let initialBits: UInt8 = 0b00001111
let invertedBits = ~initialBits //el resultado es 11110000


//Operador binario infijo AND
let firstSixBits: UInt8 = 0b11111100
let lastSixBits : UInt8 = 0b00111111
let middleFourBits = firstSixBits & lastSixBits // 00111100

//Operador binario infijo OR
let someBits : UInt8 = 0b10110010
let moreBits : UInt8 = 0b01011110
let combinedBits = someBits | moreBits //11111110

//Operador binario infijo XOR
let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101
let outputBits : UInt8 = firstBits ^ otherBits // 00010001

//Operador unario postfijo intercambio lógico
let allOnes : UInt8 = 0b11111111
let oneToTheLeft = allOnes << 1
let oneToTheRight = allOnes >> 1

let shiftBits : UInt8 = 4   //00000100
shiftBits << 1              //00001000
shiftBits << 2              //00010000
shiftBits << 5              //10000000
shiftBits << 6              //00000000
shiftBits >> 2              //00000001

let pink : UInt32 = 0xCC6699

let red  : UInt32 = 0xFF0000
let green : UInt32 = 0x00FF00
let blue : UInt32 = 0x0000FF

let redComponent = (pink & red) >> 16 //0x0000CC
let greenComponent = (pink & green) >> 8 //0x0066
let blueComponent = (pink & blue)        //0x000099






