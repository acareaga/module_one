require 'pry'
require 'stringio'

class Request

  attr_reader :hash

  def self.parse(file)
    first_line           = file.gets
    request_method       = first_line.split[0]
    path_info            = first_line.split[1]
    server_protocol      = first_line.split[2]

    second_line          = file.gets
    third_line           = file.gets
    fourth_line          = file.gets
    fifth_line           = file.gets
    sixth_line           = file.gets
    seventh_line         = file.gets
    eight_line           = file.gets
    http_accept_language = eight_line.split[1]

    ninth_line           = file.gets
    content_length       = ninth_line.split[1]

    ten_line             = file.gets
    content_type         = ten_line.split[1]

    eleven_line          = file.gets
    twelve_line          = file.gets
    body                 = file.read 15
    stringio             = StringIO.new(body.to_i)

    {'REQUEST_METHOD'      => request_method,
    'PATH_INFO'            => path_info,
    'SERVER_PROTOCOL'      => server_protocol,
    'HTTP_ACCEPT_LANGUAGE' => http_accept_language,
    'CONTENT_LENGTH'       => content_length,
    'CONTENT_TYPE'         => content_type,
    'rack.input'           => stringio}
  end



end
