///// Copyright (c) 2017 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import UIKit

class RevealtoModalViewController: UIViewController {

  var dragInteractionController:DragInteractionController?
    override func viewDidLoad() {
        super.viewDidLoad()
        dragInteractionController = DragInteractionController(viewController:self)
      
    }
  
  override func viewDidAppear(_ animated: Bool) {
    //showHelperCircle()
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
  
  func showHelperCircle(){
    let center = CGPoint(x: view.bounds.width * 0.5, y: 100)
    let small = CGSize(width: 30, height: 30)
    let circle = UIView(frame: CGRect(origin: center, size: small))
    circle.layer.cornerRadius = circle.frame.width/2
    circle.backgroundColor = UIColor.green
    circle.layer.shadowOpacity = 0.8
    circle.layer.shadowOffset = CGSize()
    view.addSubview(circle)
    UIView.animate(
      withDuration: 0.5,
      delay: 0.25,
      options: [],
      animations: {
        circle.frame.origin.y += 200
        circle.layer.opacity = 0
    },
      completion: { _ in
        circle.removeFromSuperview()
    }
    )
  }
    
    
    @IBAction func reveal(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
 

}
