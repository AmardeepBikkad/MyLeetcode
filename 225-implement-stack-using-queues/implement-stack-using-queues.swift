
class MyStack {
    var current = -1
    var array = [Int]()
    init() {
        
    }
    
    func push(_ x: Int) {
        current += 1
        array.append(x)
    }
    
    func pop() -> Int {
        if current != -1 {
            let poppedEle = array[current]
            array.remove(at: current)
            current -= 1
            return poppedEle
        }
        return -1
    }
    
    func top() -> Int {
        return current == -1 ? -1 : array[current]
    }
    
    func empty() -> Bool {
        return current == -1
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */