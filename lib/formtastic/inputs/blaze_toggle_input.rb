# frozen_string_literal: true

module Formtastic
  module Inputs
    class BlazeToggleInput < Formtastic::Inputs::BooleanInput
      include Formtastic::Inputs::Base

      # def to_html
      #   input_wrapping do
      #     # hidden_field_html <<
      #     label_html <<
      #     builder.check_box( method, input_html_options )
      #     # label_with_nested_checkbox
      #   end
      # end

      def to_html
        input_wrapping do
          toggle_label <<
            hidden_field_html <<
            toggle_checkbox
        end
      end

      def toggle_label
        builder.label(
          method,
          label_text
        )
      end

      def toggle_checkbox
        builder.label(
          method,
          label_with_embedded_checkbox,
          label_html_options
        )
      end

      def label_html_options
        classes = input_html_options[:simple_checkbox] ? [] : ['c-toggle', input_html_options[:toggle_class]]
        super.merge(for: input_html_options[:id], class: classes - ['label'])
      end

      def label_with_embedded_checkbox
        check_box_html << "" << (input_html_options[:simple_checkbox] ? '' : toggle_html)  # << label_text
      end

      def toggle_html
        template.content_tag(
          :div,
          template.content_tag(:div, '', class: 'c-toggle__handle'),
          class: 'c-toggle__track'
        )
      end
    end
  end
end
