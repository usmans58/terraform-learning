resource "aws_dynamodb_table" "cars" {
    name           = "cars"
    billing_mode   = "PAY_PER_REQUEST"
    hash_key       = "id"
    
    
    attribute {
        name = "id"
        type = "S"
    }
  
}
resource "aws_dynamodb_table_item" "car-item" {
    table_name = aws_dynamodb_table.cars.name
    hash_key   = aws_dynamodb_table.cars.hash_key
  
    item = <<EOF
{
        "id": {"S": "1"},
        "make": {"S": "Toyota"},
        "model": {"S": "Camry"},
        "year": {"N": "2020"},
        "color": {"S": "Blue"},
        "price": {"N": "24000"}
    }
EOF
}