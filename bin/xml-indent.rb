#!/usr/bin/env ruby

require 'nokogiri'

while input = ARGF.gets
  begin
    $stdout.puts Nokogiri::XML(input).to_xml
  rescue Erro::EPIPE
    exit(74)
  end
end
