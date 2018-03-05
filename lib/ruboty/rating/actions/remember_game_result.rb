module Ruboty
  module Rating
    module Actions
      class RememberGameResult < Base
        def call
          match = EloRating::Match.new
          winner_rating_old = (ratings[winner] || default_rating).to_i
          loser_rating_old = (ratings[loser] || default_rating).to_i
          match.add_player(rating: winner_rating_old, winner: true)
          match.add_player(rating: loser_rating_old)

          winner_rating_new, loser_rating_new = match.updated_ratings
          ratings[winner] = winner_rating_new
          ratings[loser] = loser_rating_new
          game_results.push([winner, loser])

          message.reply("#{winner}: #{winner_rating_old} -> #{winner_rating_new}\n#{loser}: #{loser_rating_old} -> #{loser_rating_new}")
        end

        private

        # @return [String]
        def winner
          left_win? ? message[:left_player] : message[:right_player]
        end

        # @return [String]
        def loser
          left_win? ? message[:right_player] : message[:left_player]
        end

        # @return [true, false]
        def left_win?
          message[:result] == '>'
        end
      end
    end
  end
end
