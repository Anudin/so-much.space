# TODO Use callout type as default title
# TODO Add expandable / collapsable callouts
module Jekyll
  Hooks.register [:posts], :pre_render do |doc|
    doc.content = doc.content.gsub(/^> \[!(\w+)\] (.*?)\n(?:>.*?\n)*/) do |block|
      lines = block.lines
      callout_type = $1.downcase
      header = $2.strip

      cleaned_lines = lines.map { |line| line.sub(/^>\s*?/, '') }
      cleaned_lines.shift
      body = cleaned_lines.join("\n").strip

      html =  %Q{<blockquote class="callout callout-#{callout_type}">\n  <strong markdown=\"1\">#{header}</strong>\n}
      html << (body.empty? ? "" : "  <p markdown=\"1\"> #{body}</p>\n")
      html << "</blockquote>"
      html
    end
  end
end
