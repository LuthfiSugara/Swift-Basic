import Foundation

//Subscript Syntax
//subscript(index: Int) -> Int{
//    get{
//
//    }
//    set{
//
//    }
//}


struct TimesTable{
    let multiplier: Int
    subscript(index: Int) -> Int{
        return multiplier * index
    }
}

//Subscript Usage
var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2

//Subscript Options
struct Matrix{
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, Column: Int) -> Bool{
        return row >= 0 && row < rows && Column >= 0 && Column < columns
    }
    subscript(row: Int, column: Int) -> Double{
        get{
            assert(indexIsValid(row: row, Column: column), "Index Out of Range")
            return grid[(row * columns) + column]
        }
        set{
            assert(indexIsValid(row: row, Column: column), "Index Out of Range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0,1] = 1.5
matrix[1,0] = 3.2


//Type Subscript
enum Planet: Int{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet{
        return Planet(rawValue: n)!
    }
}

let mars = Planet[4]
print(mars)
