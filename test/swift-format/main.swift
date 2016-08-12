// RUN: %swift-format %s >%t.response
// RUN: diff -u %s.response %t.response
// RUN: %swift-format -indent-width 2 %s >%t.response
// RUN: diff -u %s.indent2.response %t.response
// RUN: %swift-format -use-tabs %s >%t.response
// RUN: diff -u %s.tabs.response %t.response
// RUN: %swift-format -line-range 12:18 %s >%t.response
// RUN: diff -u %s.lines.response %t.response

import Foundation

func collatz(n: Int) {
 var r: Int
    if n%2 == 0 {
          r = n/2
        } else {
            r = 3*n+1
    }
       print("Number: \(r)")
       if r == 1 {
           print("Reached one!")
  } else {
           collatz(r)
    }
}
