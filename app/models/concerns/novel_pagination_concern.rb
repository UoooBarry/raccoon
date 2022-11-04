module NovelPaginationConcern
  extend ActiveSupport::Concern

  CHAPTER_REGEX = /^==.+==$/

  def fetch_content
    text = file.read

    chapter_title = text.scan(CHAPTER_REGEX)[current_page]
    content = text.split(CHAPTER_REGEX)[1..][current_page]

    [chapter_title, content]
  end

  def next_page
    to_page(current_page + 1)
  end

  def to_page(to_p)
    update!(current_page: to_p)
  end

  def last_page
    to_page(current_page - 1) if current_page.positive?
  end
end
