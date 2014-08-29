#
# Jekyll Generator for PNG-SVG fallback.
#

require 'rsvg2'
require 'image_optim'

module Jekyll

    class SvgPngGenerator < Generator
        safe true

        # All Jekyll Generator plugins must export at minimum at generate method.
        def generate(site)

            # Change directory to 'img/' in the root of your project.
            # Feel free to change the path if you're using a different name (e.g. 'images/').
            Dir.chdir File.expand_path('../img', File.dirname(__FILE__))

            # Loop over all the files in the 'img/' directory with the extension '.svg'.
            Dir.glob('*.svg') do |from|

                # We're going to put the generated PNG file in the same directory as its counterpart.
                # And it's going to have the same name too, so just replace the extension.
                to = File.basename(from, '.svg') + '.png'

                # Rendering and optimization is computationally expensive.
                # Only re-render and optimize if the counterpart PNG doesn't exist or is outdated.
                unless FileUtils.uptodate?(to, [from])
                    self.convert(from, to)

                    # Each time a PNG file is generated, optimize it.
                    self.optim(to)
                end
            end
        end

        # Convert the SVG file at the path in 'from' to a PNG file at the path in 'to'.
        def convert(from, to)
            puts 'Converting ' + from + ' to ' + to + '...'

            handle = RSVG::Handle.new_from_file(from)

            # Get the SVG dimensions from its 'width' and 'height' attributes.
            width, height = handle.dimensions.to_a

            # Create a 'surface' with transparency support to render a bitmap onto.
            surface = Cairo::ImageSurface.new(Cairo::FORMAT_ARGB32, width, height)
            context = Cairo::Context.new(surface)
            context.render_rsvg_handle(handle)

            # Write the bitmap to a PNG file at the given path.
            surface.write_to_png(to)
        end

        # Optimize the PNG file at the given path using the binaries supported by 'image_optim'.
        def optim(file)
            puts 'Optimizing ' + file + '...'

            # The 'pngout' and 'advpng' binaries are tricky to install.
            # Disable them by default.
            image_optim = ImageOptim.new(:pngout => false, :advpng => false)

            image_optim.optimize_image!(file)
        end

    end

end
