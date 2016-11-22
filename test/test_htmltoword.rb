require 'htmltoword'

file_path = Dir.pwd + '/test.docx'
html_path = Dir.pwd + '/hello_world.html'
html_file = File.open(html_path, "r")
html_string = html_file.read
html_file.close
document = Htmltoword::Document.create(html_string)
file = Htmltoword::Document.create_and_save(html_string, file_path)