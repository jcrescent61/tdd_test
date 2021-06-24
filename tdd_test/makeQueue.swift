
import Foundation

struct Queue {
    
    enum Error: Swift.Error {
        case unknown
        case empty
    }
    
    private var queue: Array<Double> = []
    
    mutating func enqueue(item: Double) -> Result<[Double], Error> {
        queue.append(item)
        return .success(queue)
    }
    
    @discardableResult
    mutating func enqueue(items: Array<Double>) -> Result<[Double], Error> {
        queue.append(contentsOf: items)
        return .success(queue)
    }
    
    mutating func dequeue() -> Result<Double, Error> {
        guard queue.isEmpty == false else {
            return .failure(.empty)
        }
        return .success(queue.removeFirst())
    }
    
    mutating func dequeueManyItems(numbers: Int) {
        if numbers <= queue.count {
            for _ in 0 ..< numbers {
                queue.removeFirst()
            }
        }
    }
    
    mutating func removeAll() {
        return self.queue = []
    }

}
