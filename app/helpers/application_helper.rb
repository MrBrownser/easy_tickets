module ApplicationHelper
  def nav_link(link_text, link_path)
    class_name = 'nav-item is-tab'
    class_name += current_page?(link_path) ? ' is-active' : ''

    link_to link_text, link_path, class: class_name
  end
end
