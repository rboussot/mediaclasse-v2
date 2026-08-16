module LecturesHelper
  def render_content_with_first_cta(content)
    return "" if content.blank?

    cta2_exists = Category.exists?(tag: 'cta2')

    count = 0
    cleaned_content = content.gsub(/<h2>/) do |match|
      count += 1
      if count == 2 && cta2_exists
        cta_html = render(partial: 'lectures/cta_inline')
        "#{cta_html}#{match}"
      else
        match
      end
    end

    cleaned_content.html_safe
  end
end