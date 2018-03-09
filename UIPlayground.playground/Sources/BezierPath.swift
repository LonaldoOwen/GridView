import Foundation
import UIKit

public struct BezierPath {
    private var _path = UIBezierPath()
    
    public var pathForReading: UIBezierPath {
        return _path
    }
    
    public var pathForWriting: UIBezierPath {
        mutating get {
            _path = _path.copy() as! UIBezierPath
            return _path
        }
    }
    
    // 复写init方法，否则使用时报错
    public init() {}
}

extension BezierPath {
    public var isEmpty: Bool {
        return pathForReading.isEmpty
    }
    public mutating func addLineToPoint(point: CGPoint) {
        // UIBezierPath不能直接使用addLine(to:);
        // 必须先设置起始点，使用move(to:)，有起始点才能用
        //pathForWriting.addLine(to: point)
        //pathForWriting.moveToPoint(point)
        //pathForWriting.move(to: point)
        
        if pathForWriting.isEmpty {
            pathForWriting.move(to: point)
        } else {
            pathForWriting.addLine(to: point)
        }
    }
}

/// 验证“Type实例化时，报'TempStruct' initializer is inaccessible due to 'internal' protection level”
public struct TempStruct {
    // store property设置默认值
//    public var tempProperty = 0
//    public init() {}                      // default initializer
    
    // store property不设置默认值，init()需要给store property设置一个默认值
    public var tempProperty: Int
    public init() {                         // default initializer
        self.tempProperty = 2
    }
    
    // 复写memberwise initializer：
//    public init(tempProperty: Int) {
//        self.tempProperty = tempProperty
//    }
    
}
