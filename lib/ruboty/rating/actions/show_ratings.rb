module Ruboty
  module Rating
    module Actions
      class ShowRatings < Base
        def call
          rating_ranking = ratings.sort_by { |(_player, rating)| -rating }
          message.reply(rating_ranking.map { |(player, rating)| "#{player}: #{rating}" }.join("\n"))
        end
      end
    end
  end
end
