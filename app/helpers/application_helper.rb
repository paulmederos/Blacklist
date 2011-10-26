module ApplicationHelper

  def parent_layout(layout)
    @view_flow.set(:layout,output_buffer)
    self.output_buffer = render(:file => "layouts/#{layout}")
  end

  def title_or_default
    logger.info "LOCALIZATION: looking for #{controller.controller_name}.#{controller.action_name}"
    t "#{controller.controller_name}.#{controller.action_name}"
  end
end
