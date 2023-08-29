class StepCounter{
    var totalSteps : Int = 0{
        
        willSet(newTotalSteps){
            print("Estoy a punto e cambiar totalSteps por \(newTotalSteps)")
        }
        
        didSet{
            if totalSteps > oldValue {
                print("Acabamos de sumar \(totalSteps - oldValue) pasos a la cuenta")
            }
        }
    }
}


let stepCounter = StepCounter()
stepCounter.totalSteps = 1500

stepCounter.totalSteps = 3800

stepCounter.totalSteps = 3800
