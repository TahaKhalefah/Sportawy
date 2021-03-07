//
//  SportAPI.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/22/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import Foundation
protocol SportsAPIProtocol {
    func getSports(completion: @escaping (Result<BaseResponse<[SportModel]>?, NSError>) -> Void)
}


class SportAPI: BaseApi<SportsNetworking>, SportsAPIProtocol {
    
    //MARK:- Requests
    
    func getSports(completion: @escaping (Result<BaseResponse<[SportModel]>?, NSError>) -> Void) {
        self.fetchData(target: .getSports, responseClass: BaseResponse<[SportModel]>.self) { (result) in
            completion(result)
        }
    }
}
