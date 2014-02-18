#!/usr/bin/env ruby
#
# == Author
#   Jason A. Heppler | jason.heppler@gmail.com
#
# == Copyright
#   Copyright (c) 2014 Jason A. Heppler. Licensed under the MIT License:
#   http://heppler.mit-license.org

require "rubygems"
require "google_drive"

module Jekyll
  class RenderEvents < Liquid::Tag

    def initialize(event_name, text, tokens)
      super
      # @text = text

      # login to Google Drive
      session = GoogleDrive.login("jason.heppler@gmail.com", "hmerezvgkpwparre")
      ws = session.spreadsheet_by_key('0AvL3W8DD67iAdHdQeUdZMUFFdjR6Mk1VUHRiUkYwVXc').worksheets[0]

      # Create an array of data
      # @days = {}
      # @months = {}

      # Iterate through rows
      @day = ws[2,1]
      @month = ws[2,2]
      @year = ws[2,3]
      @title = ws[2,4]
      @description = ws[2,5]
      @time = ws[2,6]
      @location = ws[2,7]
      # for row in 2..ws.num_rows
      #   for col in 1..ws.num_cols
      #     @text = ws[row, col]
      #   end
      # end
    end

    def render(context)
      "<div class='event postcard-left'>
        <div class='event-date'>
          <div class='event-month'>#{@month}</div>
          <div class='event-day'>#{@day}</div>
          <div class='event-year'>#{@year}</div>
        </div>
          <div class='event-text'>#{@description}
          <p class='timestamp'>#{@time}, #{@location}</p>
          </div>
        </div>"
    end
  end
end

Liquid::Template.register_tag('render_events', Jekyll::RenderEvents)
