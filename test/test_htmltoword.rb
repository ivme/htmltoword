require 'htmltoword'

file_path = Dir.pwd + '/test.docx'
my_html = '<html><head></head><body><p>Hello</p></body></html>'
document = Htmltoword::Document.create(my_html)
file = Htmltoword::Document.create_and_save(my_html, file_path)