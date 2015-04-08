module Api
  class ReportsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
      ReportJob.perform_later(Book.last)
      head 202
    end

  end
end