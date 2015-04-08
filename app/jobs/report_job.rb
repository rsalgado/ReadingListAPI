class ReportJob < ActiveJob::Base
  queue_as :default

  def perform(book)
    Report.generate(book)
  end
end
