# frozen_string_literal: true

require 'jekyll'
require 'uri'

module Jekyll
  module ReactPlayer
    # Implements a Liquid tag for embedding react-player.
    class ReactPlayerTag < Liquid::Tag
      def render(_context)
        if (tag_contents = parse_tag(@markup.strip))
          url = tag_contents
          uri = URI.parse(url)
          id = uri.path.gsub("/","_")
          render_tag(id, url)
        else
          raise ArgumentError, <<-ERR_MSG.gsub(/^ {12}/, '')
            Syntax error in tag 'reactplayer' while parsing the following markup:

              #{@markup}

            Valid syntax:
              {% reactplayer https://example.com/asset %}
          ERR_MSG
        end
      end

      private

      def parse_tag(input)
        matched = input.match(/\s*?(https?:\/\/[\S]+)?\s*/)
        return matched[1].strip if matched.length >= 2
      end

      def render_tag(id, url)
%(<div id="#{id}"></div>
<script src='https://cdn.rawgit.com/CookPete/react-player/master/dist/ReactPlayer.standalone.js'></script>
<script>
  window["#{id}"] = document.getElementById("#{id}")
  url = '#{url}'
  renderReactPlayer(window["#{id}"], { url, playing: true, controls: true, width: '100%', height: '100%' })
</script>
)
      end
    end
  end
end

Liquid::Template.register_tag('reactplayer', Jekyll::ReactPlayer::ReactPlayerTag)
