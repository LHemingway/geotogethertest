class DevicesController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  configure :development do
    register Sinatra::Reloader
  end

  get '/:name' do
    Device.get_name(params[:name])
  end

end