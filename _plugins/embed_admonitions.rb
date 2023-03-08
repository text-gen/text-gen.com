# frozen_string_literal: true

class AdmonitionsEmbedGenerator < Jekyll::Generator
  ADMONITION_CLASS_PREFIX = "admonition admonition-"
  TITLE_CLASS = "admonition-title"
  CONTENT_CLASS = "admonition-content"

  def generate(site)
    all_notes = site.collections['notes'].docs
    all_pages = site.pages
    all_docs = all_notes + all_pages
    parser = Jekyll::Converters::Markdown.new(site.config)

    all_docs.each do |current_note|
      current_note.content.gsub!(
        /^>\s*\[\!(.*?)\](.*?)(\r?\n\r?.*?)\r?\n\r?[^>]\z?/m
      ) do |match|
        type, title, content = $1, $2, $3
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
    end
  end
end
