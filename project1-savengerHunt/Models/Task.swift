//
//  Task.swift
//  project1-savengerHunt
//
//  Created by Lixing Zheng on 2/25/24.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String?
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite flowers", description: "Looking to pick some more flowers"),
            Task(title: "Your favorite waterfall", description: "Looking at nature"),
            Task(title: "Your favorite mediation spot", description: "Calm and Relax"),
            Task(title: "Your favorite hiking spot", description: "Where is to go to be with nature?")
        ]
    }
}

