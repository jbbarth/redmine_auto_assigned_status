class AutoAssignHook < Redmine::Hook::ViewListener
  def controller_issues_new_before_save(context)
    autoset_status(context)
  end
  
  def controller_issues_edit_before_save(context)
    autoset_status(context)
  end
  
  def autoset_status(context)
    if context[:params][:issue]
      #if status is "New" (1) and assigned_to is filled, then set status to "Assigned" (2)
      if context[:params][:issue][:status_id] == "1" && !context[:params][:issue][:assigned_to_id].blank?
        context[:issue].status_id = 2
      end
      #...
    end
  end
end
