#
# Bold - for blogging.
# Copyright (C) 2015 Jens Krämer <jk@jkraemer.net>
#
# This file is part of Bold.
#
# Bold is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Bold is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Bold.  If not, see <http://www.gnu.org/licenses/>.
#
# require 'bold/themes/jk/contents_controller_patch'

module Bold
  module Themes
    module Lean
      class Engine < ::Rails::Engine

        config.to_prepare do
          Bold::Theme.register(:lean) do

            name 'The Lean Theme'

            template :homepage
            template :post
            template :page
            template :search
            template :tag,    body: false
            template :archive, body: false
            template :contact, fields: %w(contact_message_receiver)

            image_version :big, width: 1336, quality: 70
            image_version :small, width: 600, quality: 70

            assets %w( lean.css )

            render_on :view_sitemaps_end, 'archives_sitemap'

            settings partial: 'settings', defaults: { footer_links: '' }

          end
        end

      end
    end
  end
end
