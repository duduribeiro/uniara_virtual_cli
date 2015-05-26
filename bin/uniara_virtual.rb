#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'
require 'uniara_virtual_parser'
require 'terminal-table'

program :version, '0.0.1'
program :description, 'A CLI to access Uniara Virtual'

=begin
command :login, do |c|
  c.syntax = 'uniara_virtual login, [options]'
  c.summary = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Uniara_virtual::Commands::Login,
  end
end
=end

command :grades do |c|
  c.syntax = 'uniara_virtual grades'
  c.summary = 'Retrieve the grades'
  c.description = ''
  c.example 'description', 'command example'
  c.action do |args, options|
    ra = ask 'RA:'
    token = UniaraVirtualParser.login ra, password
    rows = []
    #rows << ['', '1o bim.', '2o bim', '3o bim', '4o bim']
    UniaraVirtualParser.grades(token).each do |grade|
      rows << [grade.name, grade.first_bimester, grade.second_bimester, grade.third_bimester, grade.fourth_bimester]
    end

    table = Terminal::Table.new rows: rows, headings: ['Matéria', '1o bim', '2o bim', '3o bim', '4o bim']

    puts table
  end
end

