require 'redmine'

require 'auto_assign_hook'

Redmine::Plugin.register :redmine_auto_assigned_status do
  name 'Auto-assigns issues when setting an assignee'
  author 'Jean-Baptiste Barth'
  description 'This is a sample plugin for http://www.redmine.org/issues/6203'
  version '0.0.1'
end
