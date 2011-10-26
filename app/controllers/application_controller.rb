require "application_responder"

class ApplicationController < ActionController::Base
  extend DelegatePresenter::ApplicationController

  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery
end
