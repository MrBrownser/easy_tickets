module ApplicationHelper
  def nav_link(link_text, link_path, is_enabled=true)
    class_list = 'nav-item is-tab'
    class_list += current_page?(link_path) ? ' is-active' : ''

    is_enabled ? (link_to link_text, link_path, class: class_list) : (link_to link_text, link_path, class: "#{class_list} is-disabled")
  end
end
