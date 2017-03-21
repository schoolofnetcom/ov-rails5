class Article < ApplicationRecord
    after_create_commit { create_data_events }


    private
        def create_data_events
            Event.create(text: 'A new article has been created')
        end
end
