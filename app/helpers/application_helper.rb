module ApplicationHelper
    def sortable(column, title = nil)
        title ||= column.titleize
        direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
        link_to title, { sort: column, direction: direction }, { class: "sortable" }
      end
    
    def sort_column
        session[:sort] || 'title'
    end

    def sort_direction
        session[:direction] || 'asc'
    end
end
