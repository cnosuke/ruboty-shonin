module Ruboty
  module Handlers
    class Shonin < Base
      SHONINS = [
      '最高!!!!フゥ〜〜〜〜〜!!!!',
      'お疲れ様です!!!!飲みましょう!!!!:beers:',
      '圧倒的感謝!!!!:pray::pray::pray:',
      'クリエイティブゥ〜〜〜↑↑',
      'その調子!!!がんばれがんばれ!!!!',
      'バリュー出てるよ〜〜〜〜!!!',
      'ヨッ社長ッ!!!!',
      'ナイスブラック!!!!',
      'ステキッッッッ!!イケメン!!!',
      'きてるぅ〜〜〜〜〜〜〜↑↑',
    ]

      on /shonin( me)? ?(?<whom>.+)?/, name: 'shonin', description: 'Give someone Shonin'

      def shonin(message = {})
        whom = message[:whom]

        pre = if whom
          whom.gsub!('@', '')
          "@#{whom} "
        end

        message.reply("#{pre}#{SHONINS.sample}")
      end
    end
  end
end
