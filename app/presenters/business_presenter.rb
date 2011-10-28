class BusinessPresenter < DelegatePresenter::Base

  def biz_greeting
    "Hello, #{self.name}"
  end

  def full_address
    "#{self.street_address}, #{self.city_info}"
  end


  def city_info
    "#{self.city}, #{self.state} #{self.zip}"
  end


  def complaint_button
    s('<button class="btn primary ">',
      helpers.link_to( "File Complaint", helpers.business_path(self.__getobj__) ),
      '</button>'
    )
  end


  def no_complaints
    s('<div class="information no_past_complaints">',
			'This business has <b>no prior past</b> complaints.',
			'<span class="what_note"><a href="#">whats this mean?</a></span>',
			'</div>'
		 )
  end

  def no_pledge
    s('<div class="information not_pledged">',
			'This business has NOT taken the <b>Customer Care</b> pledge.',
			'<span class="what_note"><a href="#">whats that?</a></span>',
			'</div>'
     )
  end

  def header_text
    # TODO: business profile page vs verify business page
    s( helpers.t('businesses.header.show_text'), " ", h(self.name) )
  end

  def header_description
    # TODO: business profile page vs verify business page
    helpers.t("businesses.header.show_description")
  end
end
