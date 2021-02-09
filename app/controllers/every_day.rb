class EveryDay
  def text
    date = Date.today

    case date.strftime('%a')
      when "Mon"
         "小さいことを重ねることが、とんでもないところに行くただひとつの道　イチロー" + rents_text
      when "Tue"
         "諦めない奴には、勝てないよ。　ベーブ・ルース" + rents_text
      when "Wed"
          "努力は必ず報われる。もし報われない努力があるのならば、それはまだ努力と呼べない　王貞治\r\nちなみに今日はディズニーチケットの販売日です。" + rents_text
      when "Thu"
          "俺の敵はだいたい俺です　南部六太" + rents_text
      when "Fri"
          "迷ったら前へ。苦しかったら前に。つらかったら前に。後悔するのはその後。ずっと後でいい　星野仙一\r\n今日は室長にメモ送るの忘れずに！" + rents_text
      when "Sat"
          "若いときに流さなかった汗は、年をとった時の涙となる。　野村克也" + rents_text
      else
          "「不可能」の反対は、「可能」ではない。「挑戦」だ！！　ジャッキー・ロビンソン" + rents_text
    end
  end
  
  def rents_text
    date = Date.today
    day = date.strftime('%d')
    if day == '18'
      "\r\n家賃振り込みを忘れずに！"
    else
      ""
    end
  end
end
