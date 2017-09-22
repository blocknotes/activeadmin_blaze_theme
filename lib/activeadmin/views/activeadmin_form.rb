ActiveAdmin::Views::ActiveAdminForm.class_eval do
  def readonly( field_label, field_value )
    li class: 'readonly-field' do
      if !field_label.blank?
        label field_label, for: nil, class: 'field_label'
      else
        span '&nbsp;'.html_safe, class: 'field_label'
      end
      div do
        span !field_value.blank? ? raw( field_value ) : '', class: 'field_value'
      end
    end
  end
end
