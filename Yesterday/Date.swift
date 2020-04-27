//
//  Date.swift
//  Yesterday
//
//  Created by Jeffrey  on 4/27/20.
//  Copyright © 2020 BMCC. All rights reserved.
//

import Foundation

struct Date {
    static let lengths: [Int] = [   //an array of 13 Ints.  12 of them will be used.
         0,
        31, // 1 January
        28, // 2 February
        31, // 3 March
        30, // 4 April
        31, // 5 May
        30, // 6 June
        31, // 7 July
        31, // 8 August
        30, // 9 September
        31, //10 October
        30, //11 November
        31  //12 December
    ];

    var year: Int;
    var month: Int;   //in the range 1 to 12 inclusive
    var day: Int;

    //Move self one day into the past.

    mutating func prev() {
        if day > 1 {
            day -= 1;
        } else {
            day = Date.lengths[month - 1];
            if day == 0 {
                day = 31
            }
            if month > 1 {
                month -= 1;
            } else {
                month = 12;
                year -= 1;
            }
        }
    }

    static func numberOfMonthsInYear() -> Int {
        return Date.lengths.count - 1; //Don't need to say Date. here.
    }

    static func numberOfDaysInYear() -> Int {
        var sum: Int = 0;
        for length in Date.lengths {   //Don't need to say Date. here.
            sum += length;
        }
        return sum;   //or return Date.lengths.reduce(0, +);
    }
}
