class Portal < ActiveRecord::Base
  has_attached_file :logo
  attr_protected :logo_file_name, :logo_content_type, :logo_size

  validates_attachment_presence :logo
  validates_attachment_size :logo, :less_than => 2.megabytes
  validates_attachment_content_type :logo, :content_type => ['image/jpeg', 'image/png', 'image/gif']

end
