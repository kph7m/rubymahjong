class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def main
    render file: 'public/vueJong.html', layout: false, content_type: 'text/html'
  end
end
