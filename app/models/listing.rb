class Listing < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    Paperclip.options[:command_path] = 'C:\Program Files (x86)\GnuWin32\bin'
end
