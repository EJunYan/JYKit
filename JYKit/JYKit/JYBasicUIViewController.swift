//
//  JYBasicUIViewController.swift
//  JYKit
//
//  Created by LongJunYan on 2018/2/11.
//  Copyright © 2018年 onlecat. All rights reserved.
//

import UIKit

open class JYBasicUIViewController: UIViewController, JYUIViewController{
    
    func setNavigationBarHidden(_ isHidden: Bool) {
        self.navigationController?.navigationController?.setNavigationBarHidden(isHidden, animated: true)
    }
    
    func setToolbarHidden(_ isHidden: Bool) {
        self.navigationController?.navigationController?.setToolbarHidden(isHidden, animated: true)
    }
    
    public func setLeftBarButton(_ button: UIButton) {
        button.addTarget(self, action: #selector(self.leftBarButtonClicked(_:)), for: UIControlEvents.touchUpInside)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.setLeftBarButton(barButton, animated: false)
    }
    
    func setLeftBarButton(_ image: UIImage?, tintColor: UIColor?) {
        let button = UIBarButtonItem(image: image, style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.leftBarButtonClicked(_:)))
        button.tintColor = tintColor
        self.navigationItem.setLeftBarButton(button, animated: false)
    }
    
    func setLeftBarButton(_ title: String?,tintColor: UIColor?) {
        let button = UIBarButtonItem(title: title, style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.leftBarButtonClicked(_:)))
        button.tintColor = tintColor
        self.navigationItem.setLeftBarButton(button, animated: false)
    }
    
    @objc public func leftBarButtonClicked(_ sender: Any?) {
        
    }
    
    public func setRightBarButton(_ button: UIButton) {
        button.addTarget(self, action: #selector(self.rightBarButtonClicked(_:)), for: UIControlEvents.touchUpInside)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.setRightBarButton(barButton, animated: false)
    }
    
    func setRightBarButton(_ image: UIImage?, tintColor: UIColor?) {
        
        let button = UIBarButtonItem(image: image, style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.rightBarButtonClicked(_:)))
        button.tintColor = tintColor
        self.navigationItem.setRightBarButton(button, animated: false)
    }
    
    func setRightBarButton(_ title: String?,tintColor: UIColor?) {
        let button = UIBarButtonItem(title: title, style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.rightBarButtonClicked(_:)))
        button.tintColor = tintColor
        self.navigationItem.setRightBarButton(button, animated: false)
    }
    
    @objc public func rightBarButtonClicked(_ sender: Any?) {
        
    }
    
    @objc public func buttonClicked(_ sender: Any?) {
        
    }
    
    public func viewInit() {
        
    }
    
    public func layoutInit() {
        
    }
    
    public func commonInit() {
        
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
