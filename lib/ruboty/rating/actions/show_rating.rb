module Ruboty
  module Rating
    module Actions
      class ShowRating < Base
        def call
          if rating = ratings[player]
            message.reply("#{player}: #{rating}")
          else
            message.reply("#{player} has not played any game.")
          end
        end

        private

        # @return [String]
        def player
          message[:player]
        end
      end
    end
  end
end
