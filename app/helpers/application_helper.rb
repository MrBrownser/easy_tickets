module ApplicationHelper
  def nav_link(link_text, link_path, is_enabled=true)
    class_name = 'nav-item is-tab'
    class_name += current_page?(link_path) ? ' is-active' : ''

    is_enabled ? (link_to link_text, link_path, class: class_name) : (link_to link_text, link_path, class: "#{class_name} is-disabled")
  end
end
