require 'aws-sdk-dynamodb'

def put_item
  call_main_func
end

private

def call_main_func
  region = 'ap-northeast-1'
  dynamodb_client = Aws::DynamoDB::Client.new(region: region)

  table_name = 'browsing_history'

  uid = 'uid-28583'

  iid = "iid-33222"
  image = ""

  item = {
    table_name: table_name,
    item: {
        "uid" => uid,
        "iid" => iid,
        "image" => image,
    },
  }

  dynamodb_client.put_item(item)
end

put_item if $PROGRAM_NAME == __FILE__
