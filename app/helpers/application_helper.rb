module ApplicationHelper

  def parent_layout(layout)
    @view_flow.set(:layout,output_buffer)
    self.output_buffer = render(:file => "layouts/#{layout}")
  end

  def title_or_default
    @title_override || "#{controller.controller_name.titleize}"
  end
end
