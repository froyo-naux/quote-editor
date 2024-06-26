# frozen_string_literal: true

# Helper methods for the application.
module ApplicationHelper
  def render_turbo_stream_flash_messages
    turbo_stream.prepend 'flash', partial: 'layouts/flash'
  end

  def form_error_notification(object)
    return unless object.errors.any?

    tag.div class: 'error_message' do
      object.errors.full_messages.to_sentence.capitalize
    end
  end

  def nested_dom_id(*args)
    args.map { |arg| arg.respond_to?(:to_key) ? dom_id(arg) : arg }.join('_')
  end
end