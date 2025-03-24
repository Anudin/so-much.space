# frozen_string_literal: true

require 'nokogiri'

Jekyll::Hooks.register [:posts], :post_convert do |doc|
  convert_links(doc)
end

def convert_links(doc)
  open_external_links_in_new_tab = !!doc.site.config["open_external_links_in_new_tab"]

  if open_external_links_in_new_tab
    parsed_doc = Nokogiri::HTML::DocumentFragment.parse(doc.content)
    parsed_doc.css("a:not(.internal-link):not(.footnote):not(.reversefootnote)").each do |link|
      link.set_attribute('target', '_blank')
    end
    doc.content = parsed_doc.inner_html
  end
end
