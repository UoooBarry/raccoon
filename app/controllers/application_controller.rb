class ApplicationController < ActionController::Base
  include MenusHelper
  def interrput_turbo
    if turbo_frame_request?
      puts params
    end
  end
end
