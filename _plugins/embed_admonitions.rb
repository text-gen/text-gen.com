# frozen_string_literal: true
class AdmonitionsEmbedGenerator < Jekyll::Generator
  def generate(site)
    all_notes = site.collections['notes'].docs
    all_pages = site.pages
    all_docs = all_notes + all_pages
    parser = Jekyll::Converters::Markdown.new(site.config)

    all_docs.each do |current_note|
     # puts(current_note.content)
      current_note.content.gsub!(
        /^>\s*\[\!(.*?)\](.*?)(\r?\n\r?.*?)\r?\n\r?[^>]\z?/m) {|match|
        puts("---")
        type=$1
        title=$2
        content=$3
        puts(type,title,content  )
        admonitionClass= "admonition admonition-#{type}"
        titleClass= "admonition-title"
        contentClass= "admonition-content"
        dir = "ltr"
        if title.include? "*"
          dir="rtl"
          admonitionClass+=" rtl"
          titleClass+=" rtl"
          title.gsub!("*","")
        end

        if title.empty? 
        title=type.upcase
        end 


        <<~HTML
          <div dir="#{dir}" class="#{admonitionClass}">
            <div class="#{titleClass}" >
            #{title}
            </div>
            <p class="#{contentClass}">
            #{parser.convert(content.gsub!(/^>\s*/m,"\n"))}
            </p>
          </div>
        HTML

        }
    end
  end
end
