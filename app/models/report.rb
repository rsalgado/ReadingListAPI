class Report
  def self.generate(book)
    # talk to webservice
    # do CPU intensive stuff...
    sleep 7
    Rails.logger.info "Report for book #{book.inspect}"  #This is just to test global_id in action
  end
end
