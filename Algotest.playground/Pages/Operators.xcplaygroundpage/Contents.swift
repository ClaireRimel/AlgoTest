/*:
# Task
 
 Given the meal price (base cost of a meal), tip percent (the percentage of the meal price being added as tip), and tax percent (the percentage of the meal price being added as tax) for a meal, find and print the meal's total cost. Round the result to the nearest integer.
 */
func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) {
    
    let tipsAmount = meal_cost * Double(tip_percent)/100
    let taxAmount = meal_cost * Double(tax_percent)/100
    var totalCost = meal_cost + tipsAmount + taxAmount
    totalCost.round()
    
    print(Int(totalCost))
}

solve(meal_cost: 10.25,
      tip_percent: 17,
      tax_percent: 8)
