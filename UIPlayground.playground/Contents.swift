//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import GridViewUI


/*
class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
        
    }
}


// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
GridView.testPrint()
*/


class VC2: UIViewController {
    override func viewDidLoad() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Show VC2"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view

        
        /// 验证UIBezierPath使用时需要先使用move(to:)设置起始点
//        var path1 = UIBezierPath()
//        path1.isEmpty
//        path1.addLine(to: CGPoint(x: 20, y: 30))
//        path1.isEmpty
// UIBezierPath需要使用move(to:)方法设置起点，不能直接addLine(to:)
//        var path1 = UIBezierPath()
//        path1.move(to: CGPoint(x: 10, y: 20))
//        path1.isEmpty
//        path1.addLine(to: CGPoint(x: 20, y: 30))
//        path1.isEmpty
        
        
        /// WWDC 2015 - Session 414实例
        /// Copy-on-Write in Action
        // 验证复写init
        //var tempStruct = TempStruct()
        //var tempStruct = TempStruct(tempProperty: 3)
        
        var path = BezierPath()
        var path2 = path
        if path.isEmpty { print("Path is empty") }
        path.addLineToPoint(point: CGPoint(x: 10, y: 20))
        path.addLineToPoint(point: CGPoint(x: 30, y: 40))
        path.isEmpty
        path2.isEmpty
        path.pathForReading
        path.pathForWriting
        withUnsafePointer(to: &path) { ptr in
            return ptr
        }
        
    }
}

PlaygroundPage.current.liveView = VC2()






