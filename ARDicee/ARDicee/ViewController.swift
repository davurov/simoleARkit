//
//  ViewController.swift
//  ARDicee
//
//  Created by Abduraxmon on 07/12/22.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ARView: ARView!
    var anotherPlain : ToyPlane.ToyPlay!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        anotherPlain = try! ToyPlane.loadToyPlay()
        anotherPlain.generateCollisionShapes(recursive: true)
        ARView.scene.anchors.append(anotherPlain)
        
    }
    
    @IBAction func playBtnPressed(_ sender: Any) {
        anotherPlain.notifications.runPlane.post()
    }
    
}
