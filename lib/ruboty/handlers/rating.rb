module Ruboty
  module Handlers
    class Rating < Base
      GAME_RESULT_PATTERN = %r{(?<left_player>\w+)(?:\s+)(?<result>[<>])(?:\s+)(?<right_player>\w+)$}

      on(
        GAME_RESULT_PATTERN,
        name: 'remember_game_result',
        description: 'Remember a game result',
      )

      on(
        /show\s+rating\s+(?<player>\w+)/,
        name: 'show_rating',
        description: 'Show rating of a player',
      )

      on(
        /show\s+ratings/,
        name: 'show_ratings',
        description: 'Show ratings of all player',
      )

      on(
        /set\s+rating\s+(?<player>\w+)\s+(?<new_rating>\d+)/,
        name: 'set_rating',
        description: 'Set rating of a player manually',
      )

      on(
        /delete\s+player\s+(?<player>\w+)/,
        name: 'delete_player',
        description: 'Show rating of a player',
      )

      def remember_game_result(message)
        Ruboty::Rating::Actions::RememberGameResult.new(message).call
      end

      def show_rating(message)
        Ruboty::Rating::Actions::ShowRating.new(message).call
      end

      def show_ratings(message)
        Ruboty::Rating::Actions::ShowRatings.new(message).call
      end

      def set_rating(message)
        Ruboty::Rating::Actions::SetRating.new(message).call
      end

      def delete_player(message)
        Ruboty::Rating::Actions::DeletePlayer.new(message).call
      end
    end
  end
end
