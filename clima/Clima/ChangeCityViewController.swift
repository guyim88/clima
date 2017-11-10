//
//  ChangeCityViewController.swift
//  WeatherApp
//


import UIKit


//Write the protocol declaration here:

protocol ChangeCityDelegate {
    func userEnteredANewCityName (city : String)
}

class ChangeCityViewController: UIViewController {
    
    //Declare the delegate:
    var delegate : ChangeCityDelegate?
    @IBOutlet weak var changeCityTextField: UITextField!
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        let cityName = changeCityTextField.text
        delegate?.userEnteredANewCityName(city: cityName!) //if delegate != nil then call userEnterANewCityName and pass message
        self.dismiss(animated: true, completion: nil)      //dismiss ChangeCityViewController to go back to WeatherViewController
    }

    //user taps the back button - dismisses the ChangeCityViewController
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
