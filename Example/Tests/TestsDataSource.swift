//
//  TestsDataSource.swift
//  DynamicJSONTests
//
//  Created by Andrew Vergunov on 9/26/18.
//  Copyright © 2018 Andrew Vergunov. All rights reserved.
//

import Foundation

func facebookJsonResponse() -> [String: Any] {
    let responseData = facebookResponse().data(using: .utf8)!
    return try! JSONSerialization.jsonObject(with: responseData, options: .mutableContainers) as! [String: Any]
}

private func facebookResponse() -> String {
    return """
              {
                "comments": {
                  "data": [
                    {
                      "created_time": "2017-12-12T14:12:20+0000",
                      "message": ":) :) :)",
                      "id": "1809938745705498_1809939942372045"
                    },
                    {
                      "created_time": "2017-12-12T14:14:03+0000",
                      "message": "seasons greetings!",
                      "id": "1809938745705498_1809941802371859"
                    },
                    {
                      "created_time": "2017-12-12T14:14:11+0000",
                      "message": "My bestie <3",
                      "id": "1809938745705498_1809941879038518"
                    }
                  ],
                  "paging": {
                    "cursors": {
                      "before": "WTI5dGJXVnVkRjlqZAFhKemIzSTZANVGd3T1Rrek9UZAzROVGN3TlRNNE5Eb3hOVEV6TURnM09UTTIZD",
                      "after": "WTI5dGJXVnVkRjlqZAFhKemIzSTZANVGd4TURBd09UazROVFk1T0RNM05Eb3hOVEV6TURreU5qQXoZD",
                      "doubleValue": 12.5
                    },
                    "next": "https://graph.facebook.com/1809938745705498/comments?access_token=valid_token_goes_here",
                    "integerValue": 7
                  }
                },
                "id": "1809938745705498"
              }
           """
}
