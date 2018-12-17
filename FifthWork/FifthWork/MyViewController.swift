//
//  MyViewController.swift
//  FifthWork
//
//  Created by student on 2018/11/8.
//  Copyright © 2018年 myScrollView. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    //声明UILabel对象
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置根视图背景色
        self.view.backgroundColor = UIColor.blue
        
        //将自定制的视图添加到界面并显示
        let myView = MyView(frame:CGRect(x: 0, y: 20, width: self.view.frame.width, height: self.view.frame.height-20))
        myView.drawCurve{
            (x)->CGFloat in return x*x
        }
        self.view.addSubview(myView)
        
        
        //创建UILable对象
        label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        //设置颜色
        label?.backgroundColor = UIColor.red
        label?.textColor = UIColor.white
        //设置位置
        label?.textAlignment = .center
        //设置显示文字
        label?.text = "hello world!"
        
        //将label加入视图控制器中
        view.addSubview(label!)
        
        //建立一个button
        let button = UIButton(frame: CGRect(x: 100, y: 650, width: 200, height: 50))
        //设置颜色
        button.backgroundColor = UIColor.black
        //设置正常状态下按钮的标题
        button.setTitle("Click Me", for:UIControl.State.normal)
        //设置按钮边框的宽度
        button.layer.borderWidth=1
        //设置正常状态下标题的颜色
        button.setTitleColor(UIColor.white, for: .normal)
        //设置被点击时标题颜色
        button.setTitleColor(UIColor.red, for: .highlighted)
        
        //给按钮添加target-action
        button.addTarget(self, action: #selector(MyViewController.clicked), for: UIControl.Event.touchUpInside)
        
        //将按钮加入视图控制器中
        view.addSubview(button)
        
        
        //创建UIImageView对象
        let imageView = UIImageView(frame: CGRect(x: 10, y: 400, width: 400, height: 100))
        //获取图片路径
        let path = Bundle.main.path(forResource: "666", ofType: "jpg")
        //以该路径创建图片
        let image = UIImage(contentsOfFile: path!)
        //将图片加入到imageView中
        imageView.image = image
        //将imageView加入到控制器中
        self.view.addSubview(imageView)
 

        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func clicked(){
        print("I am clicked!!!!")
        label?.text = "I am clicked!!!!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
