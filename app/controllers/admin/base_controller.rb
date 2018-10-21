module Admin
  class BaseController < ApplicationController
    #http_basic_authenticate_with name: "admin", password: ENV["ADMIN_PASSWORD"]
  end
end
