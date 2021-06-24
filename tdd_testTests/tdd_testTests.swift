
import XCTest
@testable import makeQueue

class makeQueueTests: XCTestCase {
    
    var sut = Queue()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_한번에_하나의_아이템을_enqeue() {
        XCTAssertEqual(sut.enqueue(item: Double(1.0)), .success([1.0]))
    }
    
    func test_한번에_여러개의_아이템을_enqueue() {
        XCTAssertEqual(sut.enqueue(items: [1.0,2.0,3.0]), .success([1.0,2.0,3.0]))
    }
    
    func test_한번에_하나의_아이템을_dequeue() {
        sut.enqueue(items: [1.0,2.0,3.0])
        XCTAssertEqual(sut.dequeue(), .success(1.0))
    }
    
    func test_한번에_여러개의_아이템을_dequeue() {
//        sut.queue = [1.0,2.0,3.0]
//        sut.dequeueManyItems(numbers: 2)
//        XCTAssertEqual(sut.queue, [3.0])
    
    }
}
