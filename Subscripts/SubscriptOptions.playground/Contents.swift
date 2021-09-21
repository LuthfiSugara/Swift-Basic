import Foundation

//Subscript Options
///Subscripts can take any number of input parameters, and these input parameters can be of any type.
///Subscripts can also return a value of any type.
///you can define a subscript with multiple parameters if it’s appropriate for your type.
struct Matrix{
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double{
        get{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * column) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
print(matrix)
matrix[0,1] = 1.5
matrix[1,0] = 3.2
print(matrix)
matrix[2, 2] //This triggers an assert, because [2, 2] is outside of the matrix bounds.


