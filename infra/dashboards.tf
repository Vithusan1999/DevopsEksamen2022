resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = var.candidate_id
  ## Jim; seriously! we can use any word here.. How cool is that?
  dashboard_body = <<DEATHSTAR
{
  "widgets": [
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.candidate_id}",
            "cart_count.value"
          ]
        ],
        "period": 300,
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Total number of carts"
      }
    },
    
    {
    
      "type": "metric",
      "x": 2,
      "y": 2,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.candidate_id}",
            "cart_sum.value"
          ]
        ],
        "period": 300,
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Total sum of carts"
        }
      }, 
      
   {
      "type": "metric",
      "x": 3,
      "y": 3,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.candidate_id}",
            "checkout_count.value"
          ]
        ],
        "period": 300,
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Total carts checkout"
      }
    }, 
    
   {
    
      "type": "metric",
      "x": 4,
      "y": 4,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.candidate_id}",
            "checkout_latency.value"
          ]
        ],
        "period": 300,
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Average response time for Checkout"
      }
    }
    
    ]
  } 
  

DEATHSTAR
}