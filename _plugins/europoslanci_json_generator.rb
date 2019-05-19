require 'json'
require 'fileutils'
require './_plugins/data_page_generator'

module Jekyll
  class EuroposlanciJsonGenerator < Generator
    priority :low
    include Jekyll::DataPageLinkGenerator

    def generate(site)
      site.config['europoslanci_json_path'] = 'europoslanci.json' if !site.config['europoslanci_json_path']

      json_file = File.new(File.join(site.config['destination'], site.config['europoslanci_json_path']), 'w')

      europoslanci = site.data['europoslanci'].collect do |europoslanec|
        {
          label: europoslanec['jmeno'],
          url: datapage_url(europoslanec['jmeno'], '/europoslanci')
        }
      end

      json_file.write(europoslanci.to_json)
      json_file.close

      site.static_files << Jekyll::JsonFile.new(site, site.config['destination'], "/", site.config['europoslanci_json_path'])
      # site.pages << Jekyll::JSONPost.new(site, site.dest, json_dest, 'index.json')
    end
  end

  class JsonFile < StaticFile
    def write(dest)
      # begin
        # super(dest)
      # rescue
      # end
      # true
    end
  end

  class EuroposlanciJsonTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      IO.read(File.join(context.registers[:site].config['destination'], context.registers[:site].config['europoslanci_json_path']))
    end
  end
end

Liquid::Template.register_tag('europoslanci_json', Jekyll::EuroposlanciJsonTag)
