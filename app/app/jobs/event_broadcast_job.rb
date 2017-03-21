class EventBroadcastJob < ApplicationJob
  queue_as :default

  def perform(data)
    ActionClabe.server.broadcast 'events_channel', text: render_data(data)
  end

  private
    def render_data(data)
        ApplicationController.renderer.render(partial: 'events/event', locals: { event: data })
    end
end
