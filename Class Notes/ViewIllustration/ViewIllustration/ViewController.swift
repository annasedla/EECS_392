//
//  ViewController.swift
//  ViewIllustration
//
//  Created by Jing Li on 2/26/18.
//  Copyright © 2018 Jing Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var specialView : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let caseID = 4
        switch caseID{
        case 1:
                let v = UIView(frame: CGRect(100, 100, 50, 50))
                v.backgroundColor = .red
                self.view.addSubview(v)
        case 2:
            let v1 = UIView(frame: CGRect(100, 100, 150, 150))
            v1.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
            self.view.addSubview(v1)
            
            let v2 = UIView(frame: CGRect(5, 5, 100, 100))
            v2.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 0.5)
            v1.clipsToBounds = true
            v1.addSubview(v2)
            
            let v3 = UIView(frame: CGRect(50, 50, 100, 100))
            v3.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
            self.view.addSubview(v3)
            
        case 3:
            let v1 = UIView(frame: CGRect(100, 100, 150, 150))
            v1.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            self.view.addSubview(v1)
            
            let v2 = UIView(frame: CGRect(0, 0, 50, 50))
            v2.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
            v1.addSubview(v2)
            
            let rect = v2.bounds
            
            v2.bounds.size.height += 20
            
            let pt = v1.center
            
            v2.center = v1.convert(v1.center, from: v1.superview)
        
        case 4:
            let v1 = UIView(frame: CGRect(100, 100, 150, 150))
            v1.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            self.view.addSubview(v1)
            
            let v2 = UIView(frame: CGRect(0, 0, 50, 50))
            v2.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
            v1.addSubview(v2)
            
            //v1.transform = CGAffineTransform(rotationAngle: 45 * .pi/180)
            //v1.transform = CGAffineTransform(scaleX: 0.5, y: 1.5)
            v1.transform = CGAffineTransform(translationX: 100, y: 50).rotated(by: 45 * .pi/180)
            
        case 5:
            let v1 = UIView(frame: CGRect(100, 100, 150, 150))
            v1.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            self.view.addSubview(v1)
            
            UIView.animate(withDuration: 5){
                v1.backgroundColor = .blue
            }
            
            UIView.animate(withDuration: 5){
                v1.transform = CGAffineTransform(translationX: 100, y: 50).rotated(by: 45 * .pi/180)
            }
        case 6:
            let v1 = UIView(frame: CGRect(100, 100, 150, 150))
            v1.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            self.view.addSubview(v1)
            
            UIView.animate(withDuration: 5, animations: { v1.backgroundColor = .blue }, completion:{ (tmp: Bool) -> () in
                if tmp {
                    UIView.animate(withDuration: 5){
                        v1.transform = CGAffineTransform(translationX: 100, y: 50).rotated(by: 45 * .pi/180)
                    }
                }
            })
        case 7:
            let v1 = UIView(frame: CGRect(100, 100, 150, 150))
            v1.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            self.view.addSubview(v1)
            
            UIView.animate(withDuration: 5, animations: {
                v1.backgroundColor = .blue
                v1.transform = CGAffineTransform(scaleX: 0.001, y: 0.001).rotated(by: 270 * .pi/180)
                
            }, completion:{ (tmp: Bool) -> () in
                if tmp {
                    v1.removeFromSuperview()
                    
                }
            })
            
        case 8:
            let v1 = UIView(frame: CGRect(100, 100, 150, 150))
            v1.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            self.view.addSubview(v1)
            
            let anim = UIViewPropertyAnimator(duration: 5, curve: .linear){
                v1.backgroundColor = .blue
                v1.center.y += 100
            }
            
            anim.addAnimations{
                v1.transform = CGAffineTransform(scaleX: 0.001, y: 0.001).rotated(by: 270 * .pi/180)
            }
            
            anim.startAnimation()
            
        case 9:
            let panGestureRec = UIPanGestureRecognizer(target: self, action: #selector(ViewController.pan(recognizer:)))
            
            specialView = UIView(frame: CGRect(100, 100, 150, 150))
            specialView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            self.view.addSubview(specialView)
            
            specialView.addGestureRecognizer(panGestureRec)
            
        default:
            break
        }
        
    }

    @objc func pan(recognizer: UIPanGestureRecognizer){
        switch recognizer.state{
        case .changed, .ended:
            let translate = recognizer.translation(in: view)
            //specialView.center.x += translate.x
            //specialView.center.y += translate.y
            
            specialView.center = specialView.center.applying(CGAffineTransform(a: 1, b: 0, c: 0, d: 1, tx: translate.x, ty: translate.y))
            
            recognizer.setTranslation(CGPoint(x:0, y:0), in: view)
            
        default:
            break
            
        }
        
        
    }
 
}

