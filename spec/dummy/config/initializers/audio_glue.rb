RailsAudioGlue.setup do |config|
  # Create AudioGlue adapter and builder
  adapter        = ::AudioGlue::SoxAdapter.new
  config.builder = ::AudioGlue::Builder.new(adapter)

  # Create template loader
  templates_path = Rails.application.root.join(RailsAudioGlue::TEMPLATES_PATH).to_s
  config.loader  = ::AudioGlue::TemplateLoader.new(templates_path, :helper => AudioGlueHelper)
end
