//
//  Widget.swift
//  CustomWidget
//
//  Created by qingjiezhao on 7/18/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

@IBDesignable class Widget: UIView {
        
    var view: UIView!
    
    var nibName: String = "Widget"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBInspectable var image: UIImage? {
        get {
            return imageView.image
        }
        set(image) {
            imageView.image = image
        }
    }
    
    @IBInspectable var title: String? {
        get {
            return titleLabel.text
        }
        set(title) {
            titleLabel.text = title
        }
    }
    
    @IBInspectable var buttonTitle: String? {
        get {
            return addButton.titleForState(UIControlState.Normal)
        }
        set(title) {
            addButton.setTitle(title, forState: UIControlState.Normal)
        }
    }
    
    
    
    // init
    
    override init(frame: CGRect) {
        // properties
        super.init(frame: frame)
        
        // Set anything that uses the view or visible bounds
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        // properties
        super.init(coder: aDecoder)
        
        // Setup
        setup()
    }
    
    func setup() {
        view = loadViewFromNib()
        
        view.frame = bounds
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }

        
        @IBAction func add(sender: AnyObject) {
            let btnName =  addButton.titleLabel?.text
            println("name \(btnName)")
            switch btnName! {
            case "Add1" :
                println("Add1")
            case "Add2":
                println("Add2")
            case "Add3":
                println("Add3")
            default:break
            }
        }
        
    


}
