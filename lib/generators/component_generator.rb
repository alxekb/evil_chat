class ComponentGenerator < Rails::Generators::Base
  argument :naame, required: true, desc: 'Component name'

  def create_view_file
    create_file "#{component_path}/_#{component_name}.html.erb"
  end

  def create_css_file

  end

  def create_js_file

  end

  protected

  def component_name
    @component_name ||= name.underscore.dasherize
  end

  def component_path
    "frontend/components/#{component_name}"
  end
end
