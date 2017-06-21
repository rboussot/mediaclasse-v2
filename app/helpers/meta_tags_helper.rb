module MetaTagsHelper
  def meta_title
    content_for?(:meta_title) ? content_for(:meta_title).strip : DEFAULT_META['meta_title']
  end

  def meta_description
    content_for?(:meta_description) ? content_for(:meta_description) : DEFAULT_META['meta_description']
  end

  def meta_image
    content_for?(:meta_image) ? content_for(:meta_image).strip : image_url(DEFAULT_META['meta_image'])
  end
end
