class BusinessPresenter < DelegatePresenter::Base

  def biz_greeting
    "Hello, #{self.name}"
  end

  def full_address
    "#{self.street_address}, #{self.city}, #{self.state} #{self.zip}"
  end


  def complaint_button
    s('<button class="btn primary ">',
      helpers.link_to("File Complaint", helpers.new_complaint_path),
      '</button>'
    )
  end
end
