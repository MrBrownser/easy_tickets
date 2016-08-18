module ApplicationHelper
  def nav_link(link_text, link_path, params, is_enabled=true)
    class_list = 'nav-item is-tab'
    class_list += ' is-active' if menu_item_is_active?(link_path, params)
    is_enabled ? (link_to link_text, link_path, class: class_list) : (link_to link_text, link_path, class: "#{class_list} is-disabled")
  end

  def menu_item_is_active?(link_path, params)
    case link_path
      when '/'
          return true if params[:controller] == 'travelers' && params[:action] == 'home'
      when new_traveler_path
          return true if params[:controller] == 'travelers' && params[:action] == 'new'
      when travelers_path
          return true if params[:controller] == 'travelers' && params[:action] == 'index'
    end
  end
end
