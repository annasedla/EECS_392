//
//  CustormizedView.swift
//  ViewIllustration
//
//  Created by Jing Li on 2/26/18.
//  Copyright © 2018 Jing Li. All rights reserved.
//

import UIKit

extension CGRect{
    init(_ x: CGFloat, _ y : CGFloat, _ w: CGFloat, _ h: CGFloat){
        self.init(x:x, y:y, width: w, height:h)
    }
}

class CustormizedView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
/*    override func draw(_ rect: CGRect) {
        // Drawing code
        // Drawing code
        let caseID = 2
        switch caseID{
        case 1://UIKit
            let p = UIBezierPath(ovalIn: CGRect(0, 0, 100, 100))
            UIColor.blue.setFill()
            p.fill()
        case 2://core graphics
            let con = UIGraphicsGetCurrentContext()!
            con.addEllipse(in: CGRect(100,100,200,300))
            con.setFillColor(UIColor.blue.cgColor)
            con.fillPath()
        default:
            break
            
        }

    }
*/

}
