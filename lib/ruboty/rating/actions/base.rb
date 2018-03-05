module Ruboty
  module Rating
    module Actions
      class Base < Ruboty::Actions::Base
        RATINGS_NAMESPACE = 'ratings'
        GAME_RESULTS_NAMESPACE = 'rating_game_results'

        attr_reader :message

        def initialize(message)
          @message = message
        end

        private

        # @return [Hash{String => Integer}]
        def ratings
          message.robot.brain.data[RATINGS_NAMESPACE] ||= {}
        end

        # @return [Array<(String, String)>]
        def game_results
          message.robot.brain.data[GAME_RESULTS_NAMESPACE] ||= []
        end

        def default_rating
          1500
        end
      end
    end
  end
end
