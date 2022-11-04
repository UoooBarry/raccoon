class Novel < ApplicationRecord
  include ::NovelPaginationConcern

  mount_uploader :file, BookUploader
end
