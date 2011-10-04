include Nanoc3::Helpers::Blogging

def route_for(_item)
  return unless _item[:kind] == "article"
  path_for(_item) + 'index.html'
end

def path_for(_item)
  '/posts/' + date_for(_item).gsub('-', '/') + '/' + _item[:slug].to_s + '/'
end

def date_for(_item)
  Date.parse(_item[:created_at]).to_s
end

def format_date(_item)
  Date.parse(_item[:created_at]).strftime("%B %e, %Y")
end
