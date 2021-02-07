namespace :push_line do 
  desc "push_line"
  task push_line_message_morning: :environment do # 以下にpush機能のタスクを書く。
    message = {
      type: 'text',
      text: '小さいことを重ねることが、とんでもないところに行くただひとつの道 byイチロー'
    }
    client = Line::Bot::Client.new { |config|
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
      response = client.push_message(ENV["LINE_USER_ID"], message)
      p response
  end
end