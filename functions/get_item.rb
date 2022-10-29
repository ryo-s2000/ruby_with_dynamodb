require 'aws-sdk-dynamodb'

def get_item
  call_main_func
end

private

def test_get_item
  puts call_main_func
end

def call_main_func
  region = 'ap-northeast-1'
  dynamodb_client = Aws::DynamoDB::Client.new(region: region)

  table_name = 'browsing_history'
  uid = 'uid-28583'

  query = {
    table_name: table_name,
    key_conditions: {
      "uid" => {
        attribute_value_list: [uid],
        comparison_operator: "EQ",
      },
    },
  }

  results = dynamodb_client.query(query)
  # puts results

  res = results[:items].map { |r|
    "<div><img src='#{r['image']}'></div>"
  }

  return res
end

test_get_item if $PROGRAM_NAME == __FILE__
