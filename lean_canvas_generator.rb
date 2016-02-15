require 'nokogiri'
require 'redcarpet'

html = Nokogiri::HTML(File.open(File.join %w(template canvas.html)))
markdown_renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
basename = File.basename(ARGV[0], '.*')
content = Nokogiri::XML(markdown_renderer.render(File.read(ARGV[0])))

fields = html.css('.area')
field_contents = content.css('ol li ul')

fields = fields.sort_by do |node|
  node.attr("data-order").to_i
end

fields.each_with_index do |field, i|
  if i < field_contents.size
    field.add_child(field_contents[i])
  end
end

File.open("#{basename}.html", 'w') { |file| file.write(html.to_html) }
