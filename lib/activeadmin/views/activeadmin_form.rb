ActiveAdmin::Views::ActiveAdminForm.class_eval do
  def accordion( title, &block )
    @accordion_id = @accordion_id ? ( @accordion_id + 1 ) : 1
    text_node tag :input, type: 'checkbox', id: "accordion-#{@accordion_id}"
    label title, for: "accordion-#{@accordion_id}", class: 'c-card__item c-card__item--brand'
    div class: 'c-card__item' do
      yield block
    end
  end

  def accordion_group( &block )
    div class: 'c-card c-card--accordion u-high' do
      yield block
    end
  end

  def readonly( field, value = nil, options = {} )
    cl = 'readonly-field'
    cl += ' ' + options[:class] if options[:class]
    li class: cl do
      if !field.blank?
        label field, for: nil, class: 'field_label'
      else
        span '&nbsp;'.html_safe, class: 'field_label'
      end
      div do
        span ( value.nil? ? ( field && object.respond_to?( field ) ? object.send( field ) : '' ) : raw( value ) ), class: 'field_value'
      end
    end
  end
end
