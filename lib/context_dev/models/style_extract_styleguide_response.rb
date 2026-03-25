# frozen_string_literal: true

module ContextDev
  module Models
    # @see ContextDev::Resources::Style#extract_styleguide
    class StyleExtractStyleguideResponse < ContextDev::Internal::Type::BaseModel
      # @!attribute code
      #   HTTP status code
      #
      #   @return [Integer, nil]
      optional :code, Integer

      # @!attribute domain
      #   The normalized domain that was processed
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute status
      #   Status of the response, e.g., 'ok'
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute styleguide
      #   Comprehensive styleguide data extracted from the website
      #
      #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide, nil]
      optional :styleguide, -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide }

      # @!method initialize(code: nil, domain: nil, status: nil, styleguide: nil)
      #   @param code [Integer] HTTP status code
      #
      #   @param domain [String] The normalized domain that was processed
      #
      #   @param status [String] Status of the response, e.g., 'ok'
      #
      #   @param styleguide [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide] Comprehensive styleguide data extracted from the website

      # @see ContextDev::Models::StyleExtractStyleguideResponse#styleguide
      class Styleguide < ContextDev::Internal::Type::BaseModel
        # @!attribute colors
        #   Primary colors used on the website
        #
        #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Colors, nil]
        optional :colors, -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Colors }

        # @!attribute components
        #   UI component styles
        #
        #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components, nil]
        optional :components, -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components }

        # @!attribute element_spacing
        #   Spacing system used on the website
        #
        #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::ElementSpacing, nil]
        optional :element_spacing,
                 -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::ElementSpacing },
                 api_name: :elementSpacing

        # @!attribute mode
        #   The primary color mode of the website design
        #
        #   @return [Symbol, ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Mode, nil]
        optional :mode, enum: -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Mode }

        # @!attribute shadows
        #   Shadow styles used on the website
        #
        #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Shadows, nil]
        optional :shadows, -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Shadows }

        # @!attribute typography
        #   Typography styles used on the website
        #
        #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography, nil]
        optional :typography, -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography }

        # @!method initialize(colors: nil, components: nil, element_spacing: nil, mode: nil, shadows: nil, typography: nil)
        #   Comprehensive styleguide data extracted from the website
        #
        #   @param colors [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Colors] Primary colors used on the website
        #
        #   @param components [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components] UI component styles
        #
        #   @param element_spacing [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::ElementSpacing] Spacing system used on the website
        #
        #   @param mode [Symbol, ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Mode] The primary color mode of the website design
        #
        #   @param shadows [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Shadows] Shadow styles used on the website
        #
        #   @param typography [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography] Typography styles used on the website

        # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide#colors
        class Colors < ContextDev::Internal::Type::BaseModel
          # @!attribute accent
          #   Accent color of the website (hex format)
          #
          #   @return [String, nil]
          optional :accent, String

          # @!attribute background
          #   Background color of the website (hex format)
          #
          #   @return [String, nil]
          optional :background, String

          # @!attribute text
          #   Text color of the website (hex format)
          #
          #   @return [String, nil]
          optional :text, String

          # @!method initialize(accent: nil, background: nil, text: nil)
          #   Primary colors used on the website
          #
          #   @param accent [String] Accent color of the website (hex format)
          #
          #   @param background [String] Background color of the website (hex format)
          #
          #   @param text [String] Text color of the website (hex format)
        end

        # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide#components
        class Components < ContextDev::Internal::Type::BaseModel
          # @!attribute button
          #   Button component styles
          #
          #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button, nil]
          optional :button,
                   -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button }

          # @!attribute card
          #   Card component style
          #
          #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Card, nil]
          optional :card, -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Card }

          # @!method initialize(button: nil, card: nil)
          #   UI component styles
          #
          #   @param button [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button] Button component styles
          #
          #   @param card [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Card] Card component style

          # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components#button
          class Button < ContextDev::Internal::Type::BaseModel
            # @!attribute link
            #   Link button style
            #
            #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button::Link, nil]
            optional :link,
                     -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button::Link }

            # @!attribute primary
            #   Primary button style
            #
            #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button::Primary, nil]
            optional :primary,
                     -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button::Primary }

            # @!attribute secondary
            #   Secondary button style
            #
            #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button::Secondary, nil]
            optional :secondary,
                     -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button::Secondary }

            # @!method initialize(link: nil, primary: nil, secondary: nil)
            #   Button component styles
            #
            #   @param link [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button::Link] Link button style
            #
            #   @param primary [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button::Primary] Primary button style
            #
            #   @param secondary [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button::Secondary] Secondary button style

            # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button#link
            class Link < ContextDev::Internal::Type::BaseModel
              # @!attribute background_color
              #
              #   @return [String, nil]
              optional :background_color, String, api_name: :backgroundColor

              # @!attribute border_color
              #
              #   @return [String, nil]
              optional :border_color, String, api_name: :borderColor

              # @!attribute border_radius
              #
              #   @return [String, nil]
              optional :border_radius, String, api_name: :borderRadius

              # @!attribute border_style
              #
              #   @return [String, nil]
              optional :border_style, String, api_name: :borderStyle

              # @!attribute border_width
              #
              #   @return [String, nil]
              optional :border_width, String, api_name: :borderWidth

              # @!attribute box_shadow
              #
              #   @return [String, nil]
              optional :box_shadow, String, api_name: :boxShadow

              # @!attribute color
              #
              #   @return [String, nil]
              optional :color, String

              # @!attribute font_size
              #
              #   @return [String, nil]
              optional :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float, nil]
              optional :font_weight, Float, api_name: :fontWeight

              # @!attribute padding
              #
              #   @return [String, nil]
              optional :padding, String

              # @!attribute text_decoration
              #
              #   @return [String, nil]
              optional :text_decoration, String, api_name: :textDecoration

              # @!method initialize(background_color: nil, border_color: nil, border_radius: nil, border_style: nil, border_width: nil, box_shadow: nil, color: nil, font_size: nil, font_weight: nil, padding: nil, text_decoration: nil)
              #   Link button style
              #
              #   @param background_color [String]
              #   @param border_color [String]
              #   @param border_radius [String]
              #   @param border_style [String]
              #   @param border_width [String]
              #   @param box_shadow [String]
              #   @param color [String]
              #   @param font_size [String]
              #   @param font_weight [Float]
              #   @param padding [String]
              #   @param text_decoration [String]
            end

            # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button#primary
            class Primary < ContextDev::Internal::Type::BaseModel
              # @!attribute background_color
              #
              #   @return [String, nil]
              optional :background_color, String, api_name: :backgroundColor

              # @!attribute border_color
              #
              #   @return [String, nil]
              optional :border_color, String, api_name: :borderColor

              # @!attribute border_radius
              #
              #   @return [String, nil]
              optional :border_radius, String, api_name: :borderRadius

              # @!attribute border_style
              #
              #   @return [String, nil]
              optional :border_style, String, api_name: :borderStyle

              # @!attribute border_width
              #
              #   @return [String, nil]
              optional :border_width, String, api_name: :borderWidth

              # @!attribute box_shadow
              #
              #   @return [String, nil]
              optional :box_shadow, String, api_name: :boxShadow

              # @!attribute color
              #
              #   @return [String, nil]
              optional :color, String

              # @!attribute font_size
              #
              #   @return [String, nil]
              optional :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float, nil]
              optional :font_weight, Float, api_name: :fontWeight

              # @!attribute padding
              #
              #   @return [String, nil]
              optional :padding, String

              # @!attribute text_decoration
              #
              #   @return [String, nil]
              optional :text_decoration, String, api_name: :textDecoration

              # @!method initialize(background_color: nil, border_color: nil, border_radius: nil, border_style: nil, border_width: nil, box_shadow: nil, color: nil, font_size: nil, font_weight: nil, padding: nil, text_decoration: nil)
              #   Primary button style
              #
              #   @param background_color [String]
              #   @param border_color [String]
              #   @param border_radius [String]
              #   @param border_style [String]
              #   @param border_width [String]
              #   @param box_shadow [String]
              #   @param color [String]
              #   @param font_size [String]
              #   @param font_weight [Float]
              #   @param padding [String]
              #   @param text_decoration [String]
            end

            # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components::Button#secondary
            class Secondary < ContextDev::Internal::Type::BaseModel
              # @!attribute background_color
              #
              #   @return [String, nil]
              optional :background_color, String, api_name: :backgroundColor

              # @!attribute border_color
              #
              #   @return [String, nil]
              optional :border_color, String, api_name: :borderColor

              # @!attribute border_radius
              #
              #   @return [String, nil]
              optional :border_radius, String, api_name: :borderRadius

              # @!attribute border_style
              #
              #   @return [String, nil]
              optional :border_style, String, api_name: :borderStyle

              # @!attribute border_width
              #
              #   @return [String, nil]
              optional :border_width, String, api_name: :borderWidth

              # @!attribute box_shadow
              #
              #   @return [String, nil]
              optional :box_shadow, String, api_name: :boxShadow

              # @!attribute color
              #
              #   @return [String, nil]
              optional :color, String

              # @!attribute font_size
              #
              #   @return [String, nil]
              optional :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float, nil]
              optional :font_weight, Float, api_name: :fontWeight

              # @!attribute padding
              #
              #   @return [String, nil]
              optional :padding, String

              # @!attribute text_decoration
              #
              #   @return [String, nil]
              optional :text_decoration, String, api_name: :textDecoration

              # @!method initialize(background_color: nil, border_color: nil, border_radius: nil, border_style: nil, border_width: nil, box_shadow: nil, color: nil, font_size: nil, font_weight: nil, padding: nil, text_decoration: nil)
              #   Secondary button style
              #
              #   @param background_color [String]
              #   @param border_color [String]
              #   @param border_radius [String]
              #   @param border_style [String]
              #   @param border_width [String]
              #   @param box_shadow [String]
              #   @param color [String]
              #   @param font_size [String]
              #   @param font_weight [Float]
              #   @param padding [String]
              #   @param text_decoration [String]
            end
          end

          # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Components#card
          class Card < ContextDev::Internal::Type::BaseModel
            # @!attribute background_color
            #
            #   @return [String, nil]
            optional :background_color, String, api_name: :backgroundColor

            # @!attribute border_color
            #
            #   @return [String, nil]
            optional :border_color, String, api_name: :borderColor

            # @!attribute border_radius
            #
            #   @return [String, nil]
            optional :border_radius, String, api_name: :borderRadius

            # @!attribute border_style
            #
            #   @return [String, nil]
            optional :border_style, String, api_name: :borderStyle

            # @!attribute border_width
            #
            #   @return [String, nil]
            optional :border_width, String, api_name: :borderWidth

            # @!attribute box_shadow
            #
            #   @return [String, nil]
            optional :box_shadow, String, api_name: :boxShadow

            # @!attribute padding
            #
            #   @return [String, nil]
            optional :padding, String

            # @!attribute text_color
            #
            #   @return [String, nil]
            optional :text_color, String, api_name: :textColor

            # @!method initialize(background_color: nil, border_color: nil, border_radius: nil, border_style: nil, border_width: nil, box_shadow: nil, padding: nil, text_color: nil)
            #   Card component style
            #
            #   @param background_color [String]
            #   @param border_color [String]
            #   @param border_radius [String]
            #   @param border_style [String]
            #   @param border_width [String]
            #   @param box_shadow [String]
            #   @param padding [String]
            #   @param text_color [String]
          end
        end

        # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide#element_spacing
        class ElementSpacing < ContextDev::Internal::Type::BaseModel
          # @!attribute lg
          #   Large spacing value
          #
          #   @return [String, nil]
          optional :lg, String

          # @!attribute md
          #   Medium spacing value
          #
          #   @return [String, nil]
          optional :md, String

          # @!attribute sm
          #   Small spacing value
          #
          #   @return [String, nil]
          optional :sm, String

          # @!attribute xl
          #   Extra large spacing value
          #
          #   @return [String, nil]
          optional :xl, String

          # @!attribute xs
          #   Extra small spacing value
          #
          #   @return [String, nil]
          optional :xs, String

          # @!method initialize(lg: nil, md: nil, sm: nil, xl: nil, xs: nil)
          #   Spacing system used on the website
          #
          #   @param lg [String] Large spacing value
          #
          #   @param md [String] Medium spacing value
          #
          #   @param sm [String] Small spacing value
          #
          #   @param xl [String] Extra large spacing value
          #
          #   @param xs [String] Extra small spacing value
        end

        # The primary color mode of the website design
        #
        # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide#mode
        module Mode
          extend ContextDev::Internal::Type::Enum

          LIGHT = :light
          DARK = :dark

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide#shadows
        class Shadows < ContextDev::Internal::Type::BaseModel
          # @!attribute inner
          #   Inner shadow value
          #
          #   @return [String, nil]
          optional :inner, String

          # @!attribute lg
          #   Large shadow value
          #
          #   @return [String, nil]
          optional :lg, String

          # @!attribute md
          #   Medium shadow value
          #
          #   @return [String, nil]
          optional :md, String

          # @!attribute sm
          #   Small shadow value
          #
          #   @return [String, nil]
          optional :sm, String

          # @!attribute xl
          #   Extra large shadow value
          #
          #   @return [String, nil]
          optional :xl, String

          # @!method initialize(inner: nil, lg: nil, md: nil, sm: nil, xl: nil)
          #   Shadow styles used on the website
          #
          #   @param inner [String] Inner shadow value
          #
          #   @param lg [String] Large shadow value
          #
          #   @param md [String] Medium shadow value
          #
          #   @param sm [String] Small shadow value
          #
          #   @param xl [String] Extra large shadow value
        end

        # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide#typography
        class Typography < ContextDev::Internal::Type::BaseModel
          # @!attribute headings
          #   Heading styles
          #
          #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings, nil]
          optional :headings,
                   -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings }

          # @!attribute p_
          #   Paragraph text styles
          #
          #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::P, nil]
          optional :p_,
                   -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::P },
                   api_name: :p

          # @!method initialize(headings: nil, p_: nil)
          #   Typography styles used on the website
          #
          #   @param headings [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings] Heading styles
          #
          #   @param p_ [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::P] Paragraph text styles

          # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography#headings
          class Headings < ContextDev::Internal::Type::BaseModel
            # @!attribute h1
            #
            #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H1, nil]
            optional :h1,
                     -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H1 }

            # @!attribute h2
            #
            #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H2, nil]
            optional :h2,
                     -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H2 }

            # @!attribute h3
            #
            #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H3, nil]
            optional :h3,
                     -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H3 }

            # @!attribute h4
            #
            #   @return [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H4, nil]
            optional :h4,
                     -> { ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H4 }

            # @!method initialize(h1: nil, h2: nil, h3: nil, h4: nil)
            #   Heading styles
            #
            #   @param h1 [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H1]
            #   @param h2 [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H2]
            #   @param h3 [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H3]
            #   @param h4 [ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings::H4]

            # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings#h1
            class H1 < ContextDev::Internal::Type::BaseModel
              # @!attribute font_family
              #
              #   @return [String, nil]
              optional :font_family, String, api_name: :fontFamily

              # @!attribute font_size
              #
              #   @return [String, nil]
              optional :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float, nil]
              optional :font_weight, Float, api_name: :fontWeight

              # @!attribute letter_spacing
              #
              #   @return [String, nil]
              optional :letter_spacing, String, api_name: :letterSpacing

              # @!attribute line_height
              #
              #   @return [String, nil]
              optional :line_height, String, api_name: :lineHeight

              # @!method initialize(font_family: nil, font_size: nil, font_weight: nil, letter_spacing: nil, line_height: nil)
              #   @param font_family [String]
              #   @param font_size [String]
              #   @param font_weight [Float]
              #   @param letter_spacing [String]
              #   @param line_height [String]
            end

            # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings#h2
            class H2 < ContextDev::Internal::Type::BaseModel
              # @!attribute font_family
              #
              #   @return [String, nil]
              optional :font_family, String, api_name: :fontFamily

              # @!attribute font_size
              #
              #   @return [String, nil]
              optional :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float, nil]
              optional :font_weight, Float, api_name: :fontWeight

              # @!attribute letter_spacing
              #
              #   @return [String, nil]
              optional :letter_spacing, String, api_name: :letterSpacing

              # @!attribute line_height
              #
              #   @return [String, nil]
              optional :line_height, String, api_name: :lineHeight

              # @!method initialize(font_family: nil, font_size: nil, font_weight: nil, letter_spacing: nil, line_height: nil)
              #   @param font_family [String]
              #   @param font_size [String]
              #   @param font_weight [Float]
              #   @param letter_spacing [String]
              #   @param line_height [String]
            end

            # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings#h3
            class H3 < ContextDev::Internal::Type::BaseModel
              # @!attribute font_family
              #
              #   @return [String, nil]
              optional :font_family, String, api_name: :fontFamily

              # @!attribute font_size
              #
              #   @return [String, nil]
              optional :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float, nil]
              optional :font_weight, Float, api_name: :fontWeight

              # @!attribute letter_spacing
              #
              #   @return [String, nil]
              optional :letter_spacing, String, api_name: :letterSpacing

              # @!attribute line_height
              #
              #   @return [String, nil]
              optional :line_height, String, api_name: :lineHeight

              # @!method initialize(font_family: nil, font_size: nil, font_weight: nil, letter_spacing: nil, line_height: nil)
              #   @param font_family [String]
              #   @param font_size [String]
              #   @param font_weight [Float]
              #   @param letter_spacing [String]
              #   @param line_height [String]
            end

            # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography::Headings#h4
            class H4 < ContextDev::Internal::Type::BaseModel
              # @!attribute font_family
              #
              #   @return [String, nil]
              optional :font_family, String, api_name: :fontFamily

              # @!attribute font_size
              #
              #   @return [String, nil]
              optional :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float, nil]
              optional :font_weight, Float, api_name: :fontWeight

              # @!attribute letter_spacing
              #
              #   @return [String, nil]
              optional :letter_spacing, String, api_name: :letterSpacing

              # @!attribute line_height
              #
              #   @return [String, nil]
              optional :line_height, String, api_name: :lineHeight

              # @!method initialize(font_family: nil, font_size: nil, font_weight: nil, letter_spacing: nil, line_height: nil)
              #   @param font_family [String]
              #   @param font_size [String]
              #   @param font_weight [Float]
              #   @param letter_spacing [String]
              #   @param line_height [String]
            end
          end

          # @see ContextDev::Models::StyleExtractStyleguideResponse::Styleguide::Typography#p_
          class P < ContextDev::Internal::Type::BaseModel
            # @!attribute font_family
            #
            #   @return [String, nil]
            optional :font_family, String, api_name: :fontFamily

            # @!attribute font_size
            #
            #   @return [String, nil]
            optional :font_size, String, api_name: :fontSize

            # @!attribute font_weight
            #
            #   @return [Float, nil]
            optional :font_weight, Float, api_name: :fontWeight

            # @!attribute letter_spacing
            #
            #   @return [String, nil]
            optional :letter_spacing, String, api_name: :letterSpacing

            # @!attribute line_height
            #
            #   @return [String, nil]
            optional :line_height, String, api_name: :lineHeight

            # @!method initialize(font_family: nil, font_size: nil, font_weight: nil, letter_spacing: nil, line_height: nil)
            #   Paragraph text styles
            #
            #   @param font_family [String]
            #   @param font_size [String]
            #   @param font_weight [Float]
            #   @param letter_spacing [String]
            #   @param line_height [String]
          end
        end
      end
    end
  end
end
