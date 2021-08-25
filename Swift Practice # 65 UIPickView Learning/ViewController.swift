//
//  ViewController.swift
//  Swift Practice # 65 UIPickView Learning
//
//  Created by Dogpa's MBAir M1 on 2021/8/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let cityArray = ["","台北市","新北市","高雄市"]
    let TaipeiDistArray = ["中山區","大安區","北投區","士林區","大同區","萬華區","文山區"]
    let NewTaipeiDistArray = ["板橋區","中和區","永和區","瑞芳區","貢寮區","平溪區","淡水區","五股區","土城區","三峽區"]
    let KaohsuingDistArray = ["左營區","小港區","桃源區","鼓山區","苓雅區","新興區","旗津區","鹽埕區"]
    
    
    //告訴UIPickerVieW需要顯示幾個分類區域
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2                            //告訴UIPickerView要有兩個區域
    }
    
    //顯示各自區域的行數
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {                 //若是第0個區域
            return cityArray.count          //第0個行數則為城市 cityArray的值的總數
        }else{                              //若是第1個區域
            return NewTaipeiDistArray.count   //第1個區域的行數為所選Array的總數
        }
    }
    
    //顯示各自行數的名稱
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {              //若是第0個區域
            return cityArray[row]        //名稱為cityArray裡面的值
        }else{                           //若是第1個區域
            return NewTaipeiDistArray[row]  //名稱為所選Array的值
        }
    }
    
    //選擇了UIPickerView後選到的值後要做的事情
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {                              //若是第0個區域
            print("所選城市\(cityArray[row])")            //列印選到的城市名
        }else{                                           //若是第1個區域
            print("選擇行政區為\(NewTaipeiDistArray[row])")   //列印所選的區域名稱
        }
    }
    
    
    
    //單一區域的UIPickerView
    /*
    //建立一個城市名稱的cityArray
    let cityArray = ["基隆市","台北市","新北市","桃園市"]
    
    //告訴UIPickerVieW需要顯示幾個分類區域
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //告訴UIPickerView需要在分類區域內顯示多少的行數
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cityArray.count
    }
    
    //告訴UIPickerVIew需要在已經得知的行數內顯示的名稱為何
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cityArray[row]
    }
     */
 
}

