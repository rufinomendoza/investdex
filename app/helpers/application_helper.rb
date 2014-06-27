module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize

    # css_class = (column == sort_column) ? "current #{sort_direction}" : nil

    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"

    link = link_to "<span class='#{direction == "desc" ? "glyphicon glyphicon-arrow-down" : "glyphicon glyphicon-arrow-up"}'></span>".html_safe, {:sort => column, :direction => direction}
  end
end
