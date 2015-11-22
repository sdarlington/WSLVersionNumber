Pod::Spec.new do |s|

s.name         = "WSLVersionNumber"
s.version      = "1.0.0"
s.summary      = "Make it easier to work with application version numbers."

s.description  = <<-DESC
Make it easier to work with application version numbers.
DESC

s.homepage     = "https://github.com/sdarlington/WSLVersionNumber"
s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
s.author             = "Stephen Darlington"
s.social_media_url = "http://twitter.com/sdarlington"
s.platform     = :ios, '5.1'
s.source       = { :git => "https://github.com/sdarlington/WSLVersionNumber.git", :tag => '1.0.0' }
s.source_files  = 'WSLVersionNumber.[hm]'
s.public_header_files = 'WSLVersionNumber.h'

end
