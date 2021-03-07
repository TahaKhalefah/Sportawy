//
//  EventAPI.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/27/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
protocol EventsAPIProtocol {
    func getEvents(by id: String, completion: @escaping (Result<BaseResponse<[EventModel]>? ,NSError>) -> Void)
}


class EventAPI: BaseApi<EventsNetworking>, EventsAPIProtocol {
    
    //MARK:- Requests
    func getEvents(by id: String, completion: @escaping (Result<BaseResponse<[EventModel]>? ,NSError>) -> Void) {
        self.fetchData(target: .getEvents(id: id), responseClass: BaseResponse<[EventModel]>.self) { (result) in
            completion(result)
        }
    }
}
