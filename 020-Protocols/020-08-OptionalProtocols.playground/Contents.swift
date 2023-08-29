//someMethod(Int) -> String
//((Int) -> String)?
//someMethod?(someArgument)
import Foundation

@objc protocol CounterDataSource {
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement : Int { get }
}

class Counter {
    var count = 0
    var dataSource: CounterDataSource?
    
    func increment()  {
        if let amount = dataSource?.increment?(forCount: count){
            count += amount
        } else if let amount = dataSource?.fixedIncrement {
            count += amount
        }
    }
}

class FiveSource : NSObject, CounterDataSource {
    let fixedIncrement: Int = 5
}

var counter = Counter()
counter.dataSource = FiveSource()

for _ in 1...10 {
    counter.increment()
    print(counter.count)
}


class TowardsZeroSource : NSObject, CounterDataSource{
    func increment(forCount count: Int) -> Int {
        if count == 0 {
            return 0
        } else if count < 0 {
            return 1
        } else {
            return -1
        }
    }
}


counter.dataSource = TowardsZeroSource()
counter.count = -8

while counter.count != 0 {
    counter.increment()
    print(counter.count)
}

