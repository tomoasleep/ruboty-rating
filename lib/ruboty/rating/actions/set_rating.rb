module Ruboty
  module Rating
    module Actions
      class SetRating < Base
        def call
          ratings[player] = new_rating
          message.reply("Updated the rating of #{player}: #{new_rating}")
        end

        private

        # @return [String]
        def player
          message[:player]
        end

        # @return [Integer]
        def new_rating
          message[:new_rating].to_i
        end
      end
    end
  end
end
