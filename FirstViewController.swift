//
//  FirstViewController.swift
//  ItineraryApp
//
//  Created by Fatima-Zahra Lamkadem on 5/1/24.
//

import Foundation
import UIKit

class FirstViewController : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateArray()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //if(segue.identifier == "showDetail") {
        
        var index = tableView.indexPathForSelectedRow
        var itineraryRow = ItineraryObjectArray[index!.row]
        
        var destinationController = segue.destination as! ViewController
        destinationController.segueItinerary = itineraryRow
        
        //}
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ItineraryObjectArray.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        var itineraryRow = ItineraryObjectArray[indexPath.row]
        cell.textLabel!.text = itineraryRow.CityName
        
        return cell
    }
    
    
    
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
    
    
}

