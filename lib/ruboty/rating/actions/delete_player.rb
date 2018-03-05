module Ruboty
  module Rating
    module Actions
      class DeletePlayer < Base
        def call
          ratings.delete(player)
          message.reply("Removed #{player}")
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
