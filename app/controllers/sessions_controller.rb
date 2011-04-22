class SessionsController < ApplicationController
  def callback
    auth
  end

  def auth; request.env['omniauth.auth'] end
end
