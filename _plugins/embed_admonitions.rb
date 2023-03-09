def generate(site)
  all_notes = site.collections['notes'].docs
  all_pages = site.pages
  all_docs = all_notes + all_pages
  parser = Jekyll::Converters::Markdown.new(site.config)

  # Define a recursive pattern to match nested admonitions
  pattern = /(^>\s*\[\!(.*?)\](.*?)(\r?\n\r?.*?)\r?\n\r?[^>]\z?)+/m

  all_docs.each do |current_note|
    # Replace each outermost admonition with the recursively generated HTML
    current_note.content.gsub!(
      /^>\s*\[\!(.*?)\](.*?)(\r?\n#{pattern}\r?[^>]\z?)?/m
    ) do |match|
      type, title, content = $1, $2, $3
      dir = title.include?("*") ? "rtl" : "ltr"
      title.gsub!("*", "")
      title = type.upcase if title.empty?

      admonition_class = "#{ADMONITION_CLASS_PREFIX}#{type} #{dir}"
      title_class = "#{TITLE_CLASS} #{dir}"
      converted_content = parser.convert(content.gsub!(/^>\s*/m, "\n"))

      # Recursively generate HTML for any nested admonitions
      converted_content.gsub!(pattern) do |nested_match|
        generate_admonition_html(nested_match, parser)
      end

      generate_admonition_html(match, parser, type, title, converted_content)
    end
  end
end

# Helper method to generate the HTML for an admonition element
def generate_admonition_html(match, parser, type = nil, title = nil, content = nil)
  type ||= $1
  title ||= $2
  content ||= $3
  dir = title.include?("*") ? "rtl" : "ltr"
  title.gsub!("*", "")
  title = type.upcase if title.empty?

  admonition_class = "#{ADMONITION_CLASS_PREFIX}#{type} #{dir}"
  title_class = "#{TITLE_CLASS} #{dir}"
  converted_content = parser.convert(content.gsub!(/^>\s*/m, "\n"))

  <<~HTML
    <div dir="#{dir}" class="#{admonition_class}">
      <div class="#{title_class}">
        #{title}
      </div>
      <p class="#{CONTENT_CLASS}">
        #{converted_content}
      </p>
    </div>
  HTML
end
