//
//  APITest.swift
//  Project
//
//  Created by MacBook Air on 09/05/24.
//

import Foundation

func fetchData () {
    let url = URL(string: "https://catfact.ninja/fact")
    
    var request = URLRequest(url: url!)
    request.httpMethod = "GET"
    
    let session = URLSession.shared
    
    let task = session.dataTask(with: request) { data, response, error in
        
        guard let responseData = data else {
            print("No data received")
            return
        }
        
        do {
            if let json = try JSONSerialization.jsonObject(with: responseData, options: []) as? [String: Any] {
                print(json["fact"] ?? "not found")
            } else {
                print("Failed to parse JSON data")
            }
        } catch {
            print("Error parsing JSON data: \(error)")
        }
    }

    // Start the task
    task.resume()
}
