//
//  ViewController.swift
//  ideControltest
//
//  Created by 柯昭全 on 2022/10/27.
//

import UIKit

class ViewController: UIViewController {

    let picimage = ["蜘蛛人.jpg" , "鋼鐵人.jpg" , "綠巨人.jpg"]
    let nameOfChanLabel = ["蜘蛛人" , "鋼鐵人" , "綠巨人"]
    let nameOfEngLabel = ["Spider Man" , "Iron Man" , "Hulk"]
    
    var arrayindex : Int = 0
    
    
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameOfChan: UILabel!
    @IBOutlet weak var nameOfEng: UILabel!
    @IBOutlet weak var pageDot: UIPageControl!
    
    
    func sync(){
        image.image = UIImage(named: picimage[arrayindex])
        nameOfChan.text = nameOfChanLabel[arrayindex]
        nameOfEng.text = nameOfEngLabel[arrayindex]
        pageDot.currentPage = arrayindex
        segment.selectedSegmentIndex = arrayindex
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sync()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func segmentControlChange(_ sender: Any) {
        if segment.selectedSegmentIndex == 0{
            arrayindex = 0
            sync()
        }else if segment.selectedSegmentIndex == 1{
            arrayindex = 1
            sync()
        }else if segment.selectedSegmentIndex == 2{
            arrayindex = 2
            sync()
        }
    }
    

    @IBAction func leftButtonChange(_ sender: Any) {
        if arrayindex == 0 {
            arrayindex = arrayindex + 2
            sync()
        }else if arrayindex == 1 {
            arrayindex = arrayindex - 1
            sync()
        }else {
            arrayindex = arrayindex - 1
            sync()
        }
    }
    
    
    @IBAction func rightButtonChange(_ sender: Any) {
        if arrayindex == 0{
            arrayindex = arrayindex + 1
            sync()
        }else if arrayindex == 1{
            arrayindex = arrayindex + 1
            sync()
        }else{
            arrayindex = arrayindex - 2
            sync()
        }
    }
    
    
    @IBAction func swipeShowNextPic(_ sender: Any) {
        if arrayindex == 0{
            arrayindex = arrayindex + 1
            sync()
        }else if arrayindex == 1{
            arrayindex = arrayindex + 1
            sync()
        }else{
            arrayindex = arrayindex - 2
            sync()
        }
    }
    
    
    
    @IBAction func swipShowPrevPic(_ sender: Any) {
        if arrayindex == 0 {
            arrayindex = arrayindex + 2
            sync()
        }else if arrayindex == 1 {
            arrayindex = arrayindex - 1
            sync()
        }else {
            arrayindex = arrayindex - 1
            sync()
        }
    }
}
