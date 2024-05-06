//
//  ViewController.swift
//  ItineraryApp
//
//  Created by Fatima-Zahra Lamkadem on 3/23/24.
//
import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var appHeader: UILabel!
    
    @IBOutlet weak var travelImage: UIImageView!
    
    @IBOutlet weak var lblCityName: UITextField!
    
    @IBOutlet weak var txtCityDesc: UITextView!
    
    @IBOutlet weak var cityItinerary: UIScrollView!
    
    @IBOutlet weak var lblAttraction: UILabel!
    
    @IBOutlet weak var lblFood: UILabel!
    
    @IBOutlet weak var lblNature: UILabel!
    
    
    //var ItineraryArray = ["Tokyo", "Paris", "New York", "Cancun"]
    
    var segueItinerary = Itinerary()
    var ItineraryObjectArray = [Itinerary]()
    
    func populateArray() {
        let i0 = Itinerary()
        i0.CityName = "Tokyo"
        i0.CityDesc = "Description of the city destination"
        i0.Attraction = "Tokyo Skytree, Sensouji Temple, Harujuku"
        i0.Food = "Ramen, Sushi, Dagashi"
        i0.Nature = "Mount Fuji, Ueno Park, Lake Kanagawa"
        i0.TravelImage = "tokyo.jpg"
        i0.TravelSite = "https://www.lonelyplanet.com/japan/tokyo"
        ItineraryObjectArray.insert(i0, at: 0)
        
        let i1 = Itinerary()
        i1.CityName = "Paris"
        i1.CityDesc = "Description of the city destination"
        i1.Attraction = "Eiffle Tower, Champs-Élysées, Palace of Versailles"
        i1.Food = "Croissant, Crepes, Tarte Tartin"
        i1.Nature = "Jardin des Plantes, Champs-de-Mars, La Maison Rose"
        i1.TravelImage = "paris.jpg"
        i1.TravelSite = "https://www.lonelyplanet.com/france/paris"
        ItineraryObjectArray.append(i1)
        
        let i2 = Itinerary()
        i2.CityName = "New York"
        i2.CityDesc = "Description of the city destination"
        i2.Attraction = "Time Square, Empire State Building, Broadway"
        i2.Food = "Food trucks, New York Deli, NYC Pizza"
        i2.Nature = "Central Park, Niagara Falls, Riverside Park"
        i2.TravelImage = "newyork.jpg"
        i2.TravelSite = "https://www.lonelyplanet.com/usa/new-york-city"
        ItineraryObjectArray.append(i2)
        
        let i3 = Itinerary()
        i3.CityName = "Cancun"
        i3.CityDesc = "Description of the city destination"
        i3.Attraction = "Plaza de Toros, Mercado 23, Parque de las Palapas"
        i3.Food = "Churros, Elote, Taco"
        i3.Nature = "Parque Nacional Isla Contoy, Museo Maya de Cancún, Isla Blanca"
        i3.TravelImage = "cancun.jpg"
        i3.TravelSite = "https://www.lonelyplanet.com/mexico/cancun"
        ItineraryObjectArray.append(i3)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateArray()
        SetLabels()
        
        // Do any additional setup after loading the view.
    }
    
 
    @IBAction func travelSite(_ sender: Any) {
        let browserApp = UIApplication.shared
        let url = URL(string: rt.TravelSite)
        SetLabels()
    }
    
    var rt = Itinerary()
     
    func SetLabels() {
      
        var randomItinerary = ItineraryObjectArray.randomElement()
        
        randomItinerary = segueItinerary
        rt = randomItinerary!
        lblCityName.text = randomItinerary?.CityName
        txtCityDesc.text = randomItinerary?.CityDesc
        lblAttraction.text = randomItinerary?.Attraction
        lblFood.text = randomItinerary?.Food
        lblNature.text = randomItinerary?.Nature
        let img = UIImage(named: randomItinerary!.TravelImage)
        travelImage.image = img
        
    }
    
   
    
}
