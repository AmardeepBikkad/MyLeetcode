
class MyQueue {
   var array = [Int]()
    init() {
        
    }
    
    func push(_ x: Int) {
        array.append(x)
    }
    
    func pop() -> Int {
        if array.count != 0 {
            let poppedEle = array[0]
            array.remove(at: 0)
            return poppedEle
        }
        return -1
    }
    
    func peek() -> Int {
        if array.count != 0 {
            return array[0]
        }
        return -1
    }
    
    func empty() -> Bool {
        return array.count == 0
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */