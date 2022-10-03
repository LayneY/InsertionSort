var words = [String]()

var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!.lowercased())
    line = readLine()
}

// Add your code below:
insertionSort(array:words)

func insertionSort(array:[String]) {
    var sortArray = array
    //var pass = 1
    //var totalSwaps = 0

    //print("Pass: 0, Swaps: 0/0, Array: \(array)")
   
    for i in 1..<sortArray.count {
        var inserted = false
        var index = i
        var prevIndex = index-1
        //var swaps = 0

        while !inserted {
            if sortArray[index] < sortArray[prevIndex] {
                swap(array:&sortArray, index1:index, index2:prevIndex)
                //swaps += 1
                //totalSwaps += 1
                if index > 0{
                    index -= 1
                }
                if prevIndex > 0 {
                    prevIndex -= 1
                }
            }else{
                inserted = true
            }
        }

        //print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(sortArray)")
        //pass += 1
    }

    for word in sortArray {
        print(word)
    }
    
}

func swap(array:inout [String], index1: Int, index2: Int) {
    let elem1 = array[index1]
    let elem2 = array[index2]

    array[index1] = elem2
    array[index2] = elem1
}
