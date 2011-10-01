include Nanoc3::Helpers::Blogging

def route_for(_item)
  return unless _item[:kind] == "article"
  path_for(_item) + 'index.html'
end

def path_for(_item)
  '/posts/' + Date.parse(_item[:created_at]).to_s.gsub('-', '/') + '/' + _item[:slug] + '/'
end
