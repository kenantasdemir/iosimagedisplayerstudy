//
//  ViewController.swift
//  iosimagedisplayerstudy
//
//  Created by kenan on 28.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeToImageOne(_ sender: UIButton) {
        if let url = URL(string: "http://kasimadalan.pe.hu/filmler/resimler/interstellar.png"){
            DispatchQueue.global().async{
                let data = try? Data(contentsOf: url)
                DispatchQueue.main.async{
                    self.imageView.image = UIImage(data: data!)
                }
            }
        }
    }
    
    
    @IBAction func changeToImageTwo(_ sender: UIButton) {
        if let url = URL(string: "http://kasimadalan.pe.hu/filmler/resimler/thehatefuleight.png"){
            DispatchQueue.global().async{
                let data = try? Data(contentsOf: url)
                DispatchQueue.main.async{
                    self.imageView.image = UIImage(data: data!)
                }
            }
        }
    }
    
    



}

