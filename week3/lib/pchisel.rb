
class Chisel

  attr_reader :markdown, :num

  def initialize(markdown)
    @markdown = markdown
  end

  def to_html
    if header?(markdown)
      to_header(markdown)
    else
      to_paragraph(markdown)
    end
  end

  def header?(markdown)
    markdown[0] = "#"
  end

  def to_paragraph(markdown)
    "<p>#{markdown}</p>"
  end

  def to_header(markdown)
    num = markdown.count("#")
    header = markdown[num..-1].strip
    "<h#{num}>#{header}</h#{num}>"
  end

end

im_running_code = ($PROGRAM_NAME == __FILE__)

if im_running_code
  input_file = ARGV[0]
  output_file = ARGV[1]
  markdown = File.read(input_file)
  html = Chisel.new(markdown).to_html
  File.write output_file, html
  puts "Converted #{input_file} (#{markdown.lines.count} lines) to #{output_file} (#{html.lines.count} lines)"
end
