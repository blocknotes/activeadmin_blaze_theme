# frozen_string_literal: true

require 'activeadmin'
require 'activeadmin/views/activeadmin_form'
require 'activeadmin_blaze_theme/version'
# require 'formtastic/inputs/blaze_array_input'
require 'formtastic/inputs/blaze_toggle_input'

module ActiveAdminBlazeTheme
  module Rails
    class Engine < ::Rails::Engine
    end
  end
end

ActiveAdmin::Views::IndexAsTable::IndexTableFor::TableActions.class_eval do
  def item(*args)
    cl = args[2][:class]
    if cl.include? 'view_link'
      args[0] = '<span class="icon-eye"></span> '.html_safe + args[0]
      args[2][:class] += ' c-button c-button--ghost-info u-xsmall'
    elsif cl.include? 'edit_link'
      args[0] = '<span class="icon-pencil"></span> '.html_safe + args[0]
      args[2][:class] += ' c-button c-button--ghost-info u-xsmall'
    elsif cl.include? 'delete_link'
      args[0] = '<span class="icon-bin"></span> '.html_safe + args[0]
      args[2][:class] += ' c-button c-button--ghost-error u-xsmall'
    end
    text_node link_to(*args)
  end
end
