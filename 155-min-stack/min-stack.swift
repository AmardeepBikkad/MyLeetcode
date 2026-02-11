
class MinStack {
    var minVal = 0
    var st = [Int]()
    init() {
        
    }
    
    func push(_ val: Int) {
        if st.isEmpty {
            minVal = val
            st.append(val)
            return
        }

        if val > minVal {
            st.append(val)
        } else {
            st.append(2 * val - minVal)
            minVal = val
        }
        
    }
    
    func pop() {
        if st.isEmpty { return }

        // Get the top
        var x = st.removeLast()

        // If the modified value was added to stack
        if (x < minVal) {
            // Update the minimum
            minVal = 2 * minVal - x
        }
    }
    
    func top() -> Int {
        if st.isEmpty  {return -1}

        var x = st.last!

        // Return top if minimum is less than the top
        if (minVal < x) {return x}

        // Otherwise return mini
        return minVal
    }
    
    func getMin() -> Int {
        return minVal
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */