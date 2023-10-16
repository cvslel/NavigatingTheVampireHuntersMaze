//
//  SixthViewController.swift
//  NavigatingTheVampireHuntersMaze
//
//  Created by Cenker Soyak on 16.10.2023.
//

import UIKit

class SixthViewController: UIViewController {
    
     let image = UIImage(named: "maze")
     let head = UIImage(named: "head")
     let upArrow = UIButton()
     let leftArrow = UIButton()
     let rightArrow = UIButton()
     let downArrow = UIButton()
     
     override func viewDidLoad() {
         super.viewDidLoad()
         createUI()
     }
     func createUI(){
         view.backgroundColor = .darkGray
         
         self.hero.isEnabled = true
         
         let imageViewMaze = UIImageView()
         imageViewMaze.image = image
         view.addSubview(imageViewMaze)
         imageViewMaze.snp.makeConstraints { make in
             make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
             make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(-130)
             make.right.equalTo(view.safeAreaLayoutGuide.snp.right).offset(80)
             make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-200)
         }
         upArrow.setImage(UIImage(named: "upArrow"), for: .normal)
         upArrow.layer.borderWidth = 1
         upArrow.layer.borderColor = UIColor(named: "black")?.cgColor
         upArrow.addTarget(self, action: #selector(upButtonPressed), for: .touchUpInside)
         view.addSubview(upArrow)
         upArrow.snp.makeConstraints { make in
             make.top.equalTo(imageViewMaze.snp.bottom).offset(30)
             make.centerX.equalTo(view.center)
             make.width.equalTo(95)
         }
         leftArrow.setImage(UIImage(named: "leftArrow"), for: .normal)
         leftArrow.layer.borderWidth = 1
         leftArrow.layer.borderColor = UIColor(named: "black")?.cgColor
         leftArrow.addTarget(self, action: #selector(leftButtonPressed), for: .touchUpInside)
         view.addSubview(leftArrow)
         leftArrow.snp.makeConstraints { make in
             make.top.equalTo(imageViewMaze.snp.bottom).offset(48)
             make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(80)
             make.width.equalTo(70)
         }
         rightArrow.setImage(UIImage(named: "rightArrow"), for: .normal)
         rightArrow.layer.borderWidth = 1
         rightArrow.layer.borderColor = UIColor(named: "black")?.cgColor
         rightArrow.addTarget(self, action: #selector(rightButtonPressed), for: .touchUpInside)
         view.addSubview(rightArrow)
         rightArrow.snp.makeConstraints { make in
             make.top.equalTo(imageViewMaze.snp.bottom).offset(48)
             make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(243)
             make.width.equalTo(70)
         }
         downArrow.setImage(UIImage(named: "downArrow"), for: .normal)
         downArrow.layer.borderWidth = 1
         downArrow.layer.borderColor = UIColor(named: "black")?.cgColor
         downArrow.addTarget(self, action: #selector(downButtonPressed), for: .touchUpInside)
         view.addSubview(downArrow)
         downArrow.snp.makeConstraints { make in
             make.top.equalTo(imageViewMaze.snp.bottom).offset(79)
             make.centerX.equalTo(view.center)
             make.width.equalTo(95)
         }
         let imageViewHead = UIImageView()
         imageViewHead.image = head
         view.addSubview(imageViewHead)
         imageViewHead.snp.makeConstraints { make in
             make.top.equalTo(imageViewMaze.snp.bottom).offset(-315)
             make.left.equalTo(view.snp.left).offset(180)
             make.width.equalTo(50)
             make.height.equalTo(40)
         }
     }
     func createAlert(titleString: String, message: String){
         let alert = UIAlertController(title: titleString, message: message, preferredStyle: .alert)
         self.present(alert, animated: true, completion:nil)
         let okButton = UIAlertAction(title: "OK", style: .default)
         alert.addAction(okButton)
     }
     
     @objc func upButtonPressed(){
         createAlert(titleString: "Wrong Button", message: "You're trapped, try again!")
     }
     @objc func leftButtonPressed(){
         navigationController?.heroNavigationAnimationType = .selectBy(presenting: .slide(direction: .down),
                                                                       dismissing: .slide(direction: .up))
         navigationController?.pushViewController(SeventhViewController(), animated: true)
     }
     @objc func rightButtonPressed(){
         createAlert(titleString: "Wrong Button", message: "You're trapped, try again!")
     }
     @objc func downButtonPressed(){
         createAlert(titleString: "Wrong Button", message: "You're trapped, try again!")
     }
 }
