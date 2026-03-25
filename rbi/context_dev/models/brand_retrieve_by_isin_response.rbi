# typed: strong

module ContextDev
  module Models
    class BrandRetrieveByIsinResponse < ContextDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ContextDev::Models::BrandRetrieveByIsinResponse,
            ContextDev::Internal::AnyHash
          )
        end

      # Detailed brand information
      sig do
        returns(
          T.nilable(ContextDev::Models::BrandRetrieveByIsinResponse::Brand)
        )
      end
      attr_reader :brand

      sig do
        params(
          brand: ContextDev::Models::BrandRetrieveByIsinResponse::Brand::OrHash
        ).void
      end
      attr_writer :brand

      # HTTP status code
      sig { returns(T.nilable(Integer)) }
      attr_reader :code

      sig { params(code: Integer).void }
      attr_writer :code

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          brand: ContextDev::Models::BrandRetrieveByIsinResponse::Brand::OrHash,
          code: Integer,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Detailed brand information
        brand: nil,
        # HTTP status code
        code: nil,
        # Status of the response, e.g., 'ok'
        status: nil
      )
      end

      sig do
        override.returns(
          {
            brand: ContextDev::Models::BrandRetrieveByIsinResponse::Brand,
            code: Integer,
            status: String
          }
        )
      end
      def to_hash
      end

      class Brand < ContextDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand,
              ContextDev::Internal::AnyHash
            )
          end

        # Physical address of the brand
        sig do
          returns(
            T.nilable(
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Address
            )
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Address::OrHash
          ).void
        end
        attr_writer :address

        # An array of backdrop images for the brand
        sig do
          returns(
            T.nilable(
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop
              ]
            )
          )
        end
        attr_reader :backdrops

        sig do
          params(
            backdrops:
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::OrHash
              ]
          ).void
        end
        attr_writer :backdrops

        # An array of brand colors
        sig do
          returns(
            T.nilable(
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Color
              ]
            )
          )
        end
        attr_reader :colors

        sig do
          params(
            colors:
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Color::OrHash
              ]
          ).void
        end
        attr_writer :colors

        # A brief description of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The domain name of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :domain

        sig { params(domain: String).void }
        attr_writer :domain

        # Company email address
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # Industry classification information for the brand
        sig do
          returns(
            T.nilable(
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries
            )
          )
        end
        attr_reader :industries

        sig do
          params(
            industries:
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::OrHash
          ).void
        end
        attr_writer :industries

        # Indicates whether the brand content is not safe for work (NSFW)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_nsfw

        sig { params(is_nsfw: T::Boolean).void }
        attr_writer :is_nsfw

        # Important website links for the brand
        sig do
          returns(
            T.nilable(
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Links
            )
          )
        end
        attr_reader :links

        sig do
          params(
            links:
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Links::OrHash
          ).void
        end
        attr_writer :links

        # An array of logos associated with the brand
        sig do
          returns(
            T.nilable(
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo
              ]
            )
          )
        end
        attr_reader :logos

        sig do
          params(
            logos:
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::OrHash
              ]
          ).void
        end
        attr_writer :logos

        # Company phone number
        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { params(phone: String).void }
        attr_writer :phone

        # The brand's slogan
        sig { returns(T.nilable(String)) }
        attr_reader :slogan

        sig { params(slogan: String).void }
        attr_writer :slogan

        # An array of social media links for the brand
        sig do
          returns(
            T.nilable(
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Social
              ]
            )
          )
        end
        attr_reader :socials

        sig do
          params(
            socials:
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Social::OrHash
              ]
          ).void
        end
        attr_writer :socials

        # Stock market information for this brand (will be null if not a publicly traded
        # company)
        sig do
          returns(
            T.nilable(
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Stock
            )
          )
        end
        attr_reader :stock

        sig do
          params(
            stock:
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Stock::OrHash
          ).void
        end
        attr_writer :stock

        # The title or name of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        # Detailed brand information
        sig do
          params(
            address:
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Address::OrHash,
            backdrops:
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::OrHash
              ],
            colors:
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Color::OrHash
              ],
            description: String,
            domain: String,
            email: String,
            industries:
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::OrHash,
            is_nsfw: T::Boolean,
            links:
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Links::OrHash,
            logos:
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::OrHash
              ],
            phone: String,
            slogan: String,
            socials:
              T::Array[
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Social::OrHash
              ],
            stock:
              ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Stock::OrHash,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Physical address of the brand
          address: nil,
          # An array of backdrop images for the brand
          backdrops: nil,
          # An array of brand colors
          colors: nil,
          # A brief description of the brand
          description: nil,
          # The domain name of the brand
          domain: nil,
          # Company email address
          email: nil,
          # Industry classification information for the brand
          industries: nil,
          # Indicates whether the brand content is not safe for work (NSFW)
          is_nsfw: nil,
          # Important website links for the brand
          links: nil,
          # An array of logos associated with the brand
          logos: nil,
          # Company phone number
          phone: nil,
          # The brand's slogan
          slogan: nil,
          # An array of social media links for the brand
          socials: nil,
          # Stock market information for this brand (will be null if not a publicly traded
          # company)
          stock: nil,
          # The title or name of the brand
          title: nil
        )
        end

        sig do
          override.returns(
            {
              address:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Address,
              backdrops:
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop
                ],
              colors:
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Color
                ],
              description: String,
              domain: String,
              email: String,
              industries:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries,
              is_nsfw: T::Boolean,
              links:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Links,
              logos:
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo
                ],
              phone: String,
              slogan: String,
              socials:
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Social
                ],
              stock:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Stock,
              title: String
            }
          )
        end
        def to_hash
        end

        class Address < ContextDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Address,
                ContextDev::Internal::AnyHash
              )
            end

          # City name
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { params(city: String).void }
          attr_writer :city

          # Country name
          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          # Country code
          sig { returns(T.nilable(String)) }
          attr_reader :country_code

          sig { params(country_code: String).void }
          attr_writer :country_code

          # Postal or ZIP code
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code

          sig { params(postal_code: String).void }
          attr_writer :postal_code

          # State or province code
          sig { returns(T.nilable(String)) }
          attr_reader :state_code

          sig { params(state_code: String).void }
          attr_writer :state_code

          # State or province name
          sig { returns(T.nilable(String)) }
          attr_reader :state_province

          sig { params(state_province: String).void }
          attr_writer :state_province

          # Street address
          sig { returns(T.nilable(String)) }
          attr_reader :street

          sig { params(street: String).void }
          attr_writer :street

          # Physical address of the brand
          sig do
            params(
              city: String,
              country: String,
              country_code: String,
              postal_code: String,
              state_code: String,
              state_province: String,
              street: String
            ).returns(T.attached_class)
          end
          def self.new(
            # City name
            city: nil,
            # Country name
            country: nil,
            # Country code
            country_code: nil,
            # Postal or ZIP code
            postal_code: nil,
            # State or province code
            state_code: nil,
            # State or province name
            state_province: nil,
            # Street address
            street: nil
          )
          end

          sig do
            override.returns(
              {
                city: String,
                country: String,
                country_code: String,
                postal_code: String,
                state_code: String,
                state_province: String,
                street: String
              }
            )
          end
          def to_hash
          end
        end

        class Backdrop < ContextDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop,
                ContextDev::Internal::AnyHash
              )
            end

          # Array of colors in the backdrop image
          sig do
            returns(
              T.nilable(
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::Color
                ]
              )
            )
          end
          attr_reader :colors

          sig do
            params(
              colors:
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::Color::OrHash
                ]
            ).void
          end
          attr_writer :colors

          # Resolution of the backdrop image
          sig do
            returns(
              T.nilable(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::Resolution
              )
            )
          end
          attr_reader :resolution

          sig do
            params(
              resolution:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::Resolution::OrHash
            ).void
          end
          attr_writer :resolution

          # URL of the backdrop image
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(
              colors:
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::Color::OrHash
                ],
              resolution:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::Resolution::OrHash,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of colors in the backdrop image
            colors: nil,
            # Resolution of the backdrop image
            resolution: nil,
            # URL of the backdrop image
            url: nil
          )
          end

          sig do
            override.returns(
              {
                colors:
                  T::Array[
                    ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::Color
                  ],
                resolution:
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::Resolution,
                url: String
              }
            )
          end
          def to_hash
          end

          class Color < ContextDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::Color,
                  ContextDev::Internal::AnyHash
                )
              end

            # Color in hexadecimal format
            sig { returns(T.nilable(String)) }
            attr_reader :hex

            sig { params(hex: String).void }
            attr_writer :hex

            # Name of the color
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { params(hex: String, name: String).returns(T.attached_class) }
            def self.new(
              # Color in hexadecimal format
              hex: nil,
              # Name of the color
              name: nil
            )
            end

            sig { override.returns({ hex: String, name: String }) }
            def to_hash
            end
          end

          class Resolution < ContextDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Backdrop::Resolution,
                  ContextDev::Internal::AnyHash
                )
              end

            # Aspect ratio of the image (width/height)
            sig { returns(T.nilable(Float)) }
            attr_reader :aspect_ratio

            sig { params(aspect_ratio: Float).void }
            attr_writer :aspect_ratio

            # Height of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :height

            sig { params(height: Integer).void }
            attr_writer :height

            # Width of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :width

            sig { params(width: Integer).void }
            attr_writer :width

            # Resolution of the backdrop image
            sig do
              params(
                aspect_ratio: Float,
                height: Integer,
                width: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Aspect ratio of the image (width/height)
              aspect_ratio: nil,
              # Height of the image in pixels
              height: nil,
              # Width of the image in pixels
              width: nil
            )
            end

            sig do
              override.returns(
                { aspect_ratio: Float, height: Integer, width: Integer }
              )
            end
            def to_hash
            end
          end
        end

        class Color < ContextDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Color,
                ContextDev::Internal::AnyHash
              )
            end

          # Color in hexadecimal format
          sig { returns(T.nilable(String)) }
          attr_reader :hex

          sig { params(hex: String).void }
          attr_writer :hex

          # Name of the color
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(hex: String, name: String).returns(T.attached_class) }
          def self.new(
            # Color in hexadecimal format
            hex: nil,
            # Name of the color
            name: nil
          )
          end

          sig { override.returns({ hex: String, name: String }) }
          def to_hash
          end
        end

        class Industries < ContextDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries,
                ContextDev::Internal::AnyHash
              )
            end

          # Easy Industry Classification - array of industry and subindustry pairs
          sig do
            returns(
              T.nilable(
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic
                ]
              )
            )
          end
          attr_reader :eic

          sig do
            params(
              eic:
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::OrHash
                ]
            ).void
          end
          attr_writer :eic

          # Industry classification information for the brand
          sig do
            params(
              eic:
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Easy Industry Classification - array of industry and subindustry pairs
            eic: nil
          )
          end

          sig do
            override.returns(
              {
                eic:
                  T::Array[
                    ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic
                  ]
              }
            )
          end
          def to_hash
          end

          class Eic < ContextDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic,
                  ContextDev::Internal::AnyHash
                )
              end

            # Industry classification enum
            sig do
              returns(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
              )
            end
            attr_accessor :industry

            # Subindustry classification enum
            sig do
              returns(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
              )
            end
            attr_accessor :subindustry

            sig do
              params(
                industry:
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::OrSymbol,
                subindustry:
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Industry classification enum
              industry:,
              # Subindustry classification enum
              subindustry:
            )
            end

            sig do
              override.returns(
                {
                  industry:
                    ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol,
                  subindustry:
                    ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Industry classification enum
            module Industry
              extend ContextDev::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AEROSPACE_DEFENSE =
                T.let(
                  :"Aerospace & Defense",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              TECHNOLOGY =
                T.let(
                  :Technology,
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              FINANCE =
                T.let(
                  :Finance,
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              HEALTHCARE =
                T.let(
                  :Healthcare,
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              RETAIL_E_COMMERCE =
                T.let(
                  :"Retail & E-commerce",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              ENTERTAINMENT =
                T.let(
                  :Entertainment,
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              EDUCATION =
                T.let(
                  :Education,
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              GOVERNMENT_NONPROFIT =
                T.let(
                  :"Government & Nonprofit",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              INDUSTRIAL_ENERGY =
                T.let(
                  :"Industrial & Energy",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              AUTOMOTIVE_TRANSPORTATION =
                T.let(
                  :"Automotive & Transportation",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              LIFESTYLE_LEISURE =
                T.let(
                  :"Lifestyle & Leisure",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              LUXURY_FASHION =
                T.let(
                  :"Luxury & Fashion",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              NEWS_MEDIA =
                T.let(
                  :"News & Media",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              SPORTS =
                T.let(
                  :Sports,
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              REAL_ESTATE_PROP_TECH =
                T.let(
                  :"Real Estate & PropTech",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              LEGAL_COMPLIANCE =
                T.let(
                  :"Legal & Compliance",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              TELECOMMUNICATIONS =
                T.let(
                  :Telecommunications,
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              AGRICULTURE_FOOD =
                T.let(
                  :"Agriculture & Food",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              PROFESSIONAL_SERVICES_AGENCIES =
                T.let(
                  :"Professional Services & Agencies",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              CHEMICALS_MATERIALS =
                T.let(
                  :"Chemicals & Materials",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              LOGISTICS_SUPPLY_CHAIN =
                T.let(
                  :"Logistics & Supply Chain",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              HOSPITALITY_TOURISM =
                T.let(
                  :"Hospitality & Tourism",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              CONSTRUCTION_BUILT_ENVIRONMENT =
                T.let(
                  :"Construction & Built Environment",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              CONSUMER_PACKAGED_GOODS_CPG =
                T.let(
                  :"Consumer Packaged Goods (CPG)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Subindustry classification enum
            module Subindustry
              extend ContextDev::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DEFENSE_SYSTEMS_MILITARY_HARDWARE =
                T.let(
                  :"Defense Systems & Military Hardware",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AEROSPACE_MANUFACTURING =
                T.let(
                  :"Aerospace Manufacturing",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AVIONICS_NAVIGATION_TECHNOLOGY =
                T.let(
                  :"Avionics & Navigation Technology",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUBSEA_NAVAL_DEFENSE_SYSTEMS =
                T.let(
                  :"Subsea & Naval Defense Systems",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPACE_SATELLITE_TECHNOLOGY =
                T.let(
                  :"Space & Satellite Technology",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DEFENSE_IT_SYSTEMS_INTEGRATION =
                T.let(
                  :"Defense IT & Systems Integration",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SOFTWARE_B2_B =
                T.let(
                  :"Software (B2B)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SOFTWARE_B2_C =
                T.let(
                  :"Software (B2C)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CLOUD_INFRASTRUCTURE_DEV_OPS =
                T.let(
                  :"Cloud Infrastructure & DevOps",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CYBERSECURITY =
                T.let(
                  :Cybersecurity,
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ARTIFICIAL_INTELLIGENCE_MACHINE_LEARNING =
                T.let(
                  :"Artificial Intelligence & Machine Learning",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DATA_INFRASTRUCTURE_ANALYTICS =
                T.let(
                  :"Data Infrastructure & Analytics",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HARDWARE_SEMICONDUCTORS =
                T.let(
                  :"Hardware & Semiconductors",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FINTECH_INFRASTRUCTURE =
                T.let(
                  :"Fintech Infrastructure",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              E_COMMERCE_MARKETPLACE_PLATFORMS =
                T.let(
                  :"eCommerce & Marketplace Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DEVELOPER_TOOLS_APIS =
                T.let(
                  :"Developer Tools & APIs",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              WEB3_BLOCKCHAIN =
                T.let(
                  :"Web3 & Blockchain",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              XR_SPATIAL_COMPUTING =
                T.let(
                  :"XR & Spatial Computing",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BANKING_LENDING =
                T.let(
                  :"Banking & Lending",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INVESTMENT_MANAGEMENT_WEALTH_TECH =
                T.let(
                  :"Investment Management & WealthTech",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INSURANCE_INSUR_TECH =
                T.let(
                  :"Insurance & InsurTech",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PAYMENTS_MONEY_MOVEMENT =
                T.let(
                  :"Payments & Money Movement",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ACCOUNTING_TAX_FINANCIAL_PLANNING_TOOLS =
                T.let(
                  :"Accounting, Tax & Financial Planning Tools",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CAPITAL_MARKETS_TRADING_PLATFORMS =
                T.let(
                  :"Capital Markets & Trading Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FINANCIAL_INFRASTRUCTURE_APIS =
                T.let(
                  :"Financial Infrastructure & APIs",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CREDIT_SCORING_RISK_MANAGEMENT =
                T.let(
                  :"Credit Scoring & Risk Management",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CRYPTOCURRENCY_DIGITAL_ASSETS =
                T.let(
                  :"Cryptocurrency & Digital Assets",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BNPL_ALTERNATIVE_FINANCING =
                T.let(
                  :"BNPL & Alternative Financing",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HEALTHCARE_PROVIDERS_SERVICES =
                T.let(
                  :"Healthcare Providers & Services",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PHARMACEUTICALS_DRUG_DEVELOPMENT =
                T.let(
                  :"Pharmaceuticals & Drug Development",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MEDICAL_DEVICES_DIAGNOSTICS =
                T.let(
                  :"Medical Devices & Diagnostics",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BIOTECHNOLOGY_GENOMICS =
                T.let(
                  :"Biotechnology & Genomics",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DIGITAL_HEALTH_TELEMEDICINE =
                T.let(
                  :"Digital Health & Telemedicine",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HEALTH_INSURANCE_BENEFITS_TECH =
                T.let(
                  :"Health Insurance & Benefits Tech",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CLINICAL_TRIALS_RESEARCH_PLATFORMS =
                T.let(
                  :"Clinical Trials & Research Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MENTAL_HEALTH_WELLNESS =
                T.let(
                  :"Mental Health & Wellness",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HEALTHCARE_IT_EHR_SYSTEMS =
                T.let(
                  :"Healthcare IT & EHR Systems",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSUMER_HEALTH_WELLNESS_PRODUCTS =
                T.let(
                  :"Consumer Health & Wellness Products",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ONLINE_MARKETPLACES =
                T.let(
                  :"Online Marketplaces",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DIRECT_TO_CONSUMER_DTC_BRANDS =
                T.let(
                  :"Direct-to-Consumer (DTC) Brands",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RETAIL_TECH_POINT_OF_SALE_SYSTEMS =
                T.let(
                  :"Retail Tech & Point-of-Sale Systems",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              OMNICHANNEL_IN_STORE_RETAIL =
                T.let(
                  :"Omnichannel & In-Store Retail",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              E_COMMERCE_ENABLEMENT_INFRASTRUCTURE =
                T.let(
                  :"E-commerce Enablement & Infrastructure",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUBSCRIPTION_MEMBERSHIP_COMMERCE =
                T.let(
                  :"Subscription & Membership Commerce",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SOCIAL_COMMERCE_INFLUENCER_PLATFORMS =
                T.let(
                  :"Social Commerce & Influencer Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FASHION_APPAREL_RETAIL =
                T.let(
                  :"Fashion & Apparel Retail",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FOOD_BEVERAGE_GROCERY_E_COMMERCE =
                T.let(
                  :"Food, Beverage & Grocery E-commerce",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              STREAMING_PLATFORMS_VIDEO_MUSIC_AUDIO =
                T.let(
                  :"Streaming Platforms (Video, Music, Audio)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              GAMING_INTERACTIVE_ENTERTAINMENT =
                T.let(
                  :"Gaming & Interactive Entertainment",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CREATOR_ECONOMY_INFLUENCER_PLATFORMS =
                T.let(
                  :"Creator Economy & Influencer Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ADVERTISING_ADTECH_MEDIA_BUYING =
                T.let(
                  :"Advertising, Adtech & Media Buying",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FILM_TV_PRODUCTION_STUDIOS =
                T.let(
                  :"Film, TV & Production Studios",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EVENTS_VENUES_LIVE_ENTERTAINMENT =
                T.let(
                  :"Events, Venues & Live Entertainment",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              VIRTUAL_WORLDS_METAVERSE_EXPERIENCES =
                T.let(
                  :"Virtual Worlds & Metaverse Experiences",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              K_12_EDUCATION_PLATFORMS_TOOLS =
                T.let(
                  :"K-12 Education Platforms & Tools",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HIGHER_EDUCATION_UNIVERSITY_TECH =
                T.let(
                  :"Higher Education & University Tech",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ONLINE_LEARNING_MOO_CS =
                T.let(
                  :"Online Learning & MOOCs",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TEST_PREP_CERTIFICATION =
                T.let(
                  :"Test Prep & Certification",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CORPORATE_TRAINING_UPSKILLING =
                T.let(
                  :"Corporate Training & Upskilling",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TUTORING_SUPPLEMENTAL_LEARNING =
                T.let(
                  :"Tutoring & Supplemental Learning",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EDUCATION_MANAGEMENT_SYSTEMS_LMS_SIS =
                T.let(
                  :"Education Management Systems (LMS/SIS)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LANGUAGE_LEARNING =
                T.let(
                  :"Language Learning",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CREATOR_LED_COHORT_BASED_COURSES =
                T.let(
                  :"Creator-Led & Cohort-Based Courses",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPECIAL_EDUCATION_ACCESSIBILITY_TOOLS =
                T.let(
                  :"Special Education & Accessibility Tools",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              GOVERNMENT_TECHNOLOGY_DIGITAL_SERVICES =
                T.let(
                  :"Government Technology & Digital Services",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CIVIC_ENGAGEMENT_POLICY_PLATFORMS =
                T.let(
                  :"Civic Engagement & Policy Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INTERNATIONAL_DEVELOPMENT_HUMANITARIAN_AID =
                T.let(
                  :"International Development & Humanitarian Aid",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PHILANTHROPY_GRANTMAKING =
                T.let(
                  :"Philanthropy & Grantmaking",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              NONPROFIT_OPERATIONS_FUNDRAISING_TOOLS =
                T.let(
                  :"Nonprofit Operations & Fundraising Tools",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PUBLIC_HEALTH_SOCIAL_SERVICES =
                T.let(
                  :"Public Health & Social Services",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EDUCATION_YOUTH_DEVELOPMENT_PROGRAMS =
                T.let(
                  :"Education & Youth Development Programs",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ENVIRONMENTAL_CLIMATE_ACTION_ORGANIZATIONS =
                T.let(
                  :"Environmental & Climate Action Organizations",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LEGAL_AID_SOCIAL_JUSTICE_ADVOCACY =
                T.let(
                  :"Legal Aid & Social Justice Advocacy",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MUNICIPAL_INFRASTRUCTURE_SERVICES =
                T.let(
                  :"Municipal & Infrastructure Services",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MANUFACTURING_INDUSTRIAL_AUTOMATION =
                T.let(
                  :"Manufacturing & Industrial Automation",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ENERGY_PRODUCTION_OIL_GAS_NUCLEAR =
                T.let(
                  :"Energy Production (Oil, Gas, Nuclear)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RENEWABLE_ENERGY_CLEANTECH =
                T.let(
                  :"Renewable Energy & Cleantech",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              UTILITIES_GRID_INFRASTRUCTURE =
                T.let(
                  :"Utilities & Grid Infrastructure",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INDUSTRIAL_IO_T_MONITORING_SYSTEMS =
                T.let(
                  :"Industrial IoT & Monitoring Systems",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSTRUCTION_HEAVY_EQUIPMENT =
                T.let(
                  :"Construction & Heavy Equipment",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MINING_NATURAL_RESOURCES =
                T.let(
                  :"Mining & Natural Resources",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ENVIRONMENTAL_ENGINEERING_SUSTAINABILITY =
                T.let(
                  :"Environmental Engineering & Sustainability",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ENERGY_STORAGE_BATTERY_TECHNOLOGY =
                T.let(
                  :"Energy Storage & Battery Technology",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AUTOMOTIVE_OE_MS_VEHICLE_MANUFACTURING =
                T.let(
                  :"Automotive OEMs & Vehicle Manufacturing",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ELECTRIC_VEHICLES_E_VS_CHARGING_INFRASTRUCTURE =
                T.let(
                  :"Electric Vehicles (EVs) & Charging Infrastructure",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MOBILITY_AS_A_SERVICE_MAA_S =
                T.let(
                  :"Mobility-as-a-Service (MaaS)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FLEET_MANAGEMENT =
                T.let(
                  :"Fleet Management",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PUBLIC_TRANSIT_URBAN_MOBILITY =
                T.let(
                  :"Public Transit & Urban Mobility",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AUTONOMOUS_VEHICLES_ADAS =
                T.let(
                  :"Autonomous Vehicles & ADAS",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AFTERMARKET_PARTS_SERVICES =
                T.let(
                  :"Aftermarket Parts & Services",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TELEMATICS_VEHICLE_CONNECTIVITY =
                T.let(
                  :"Telematics & Vehicle Connectivity",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AVIATION_AEROSPACE_TRANSPORT =
                T.let(
                  :"Aviation & Aerospace Transport",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MARITIME_SHIPPING =
                T.let(
                  :"Maritime Shipping",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FITNESS_WELLNESS =
                T.let(
                  :"Fitness & Wellness",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BEAUTY_PERSONAL_CARE =
                T.let(
                  :"Beauty & Personal Care",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HOME_LIVING =
                T.let(
                  :"Home & Living",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DATING_RELATIONSHIPS =
                T.let(
                  :"Dating & Relationships",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HOBBIES_CRAFTS_DIY =
                T.let(
                  :"Hobbies, Crafts & DIY",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              OUTDOOR_RECREATIONAL_GEAR =
                T.let(
                  :"Outdoor & Recreational Gear",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EVENTS_EXPERIENCES_TICKETING_PLATFORMS =
                T.let(
                  :"Events, Experiences & Ticketing Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DESIGNER_LUXURY_APPAREL =
                T.let(
                  :"Designer & Luxury Apparel",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ACCESSORIES_JEWELRY_WATCHES =
                T.let(
                  :"Accessories, Jewelry & Watches",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FOOTWEAR_LEATHER_GOODS =
                T.let(
                  :"Footwear & Leather Goods",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BEAUTY_FRAGRANCE_SKINCARE =
                T.let(
                  :"Beauty, Fragrance & Skincare",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FASHION_MARKETPLACES_RETAIL_PLATFORMS =
                T.let(
                  :"Fashion Marketplaces & Retail Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUSTAINABLE_ETHICAL_FASHION =
                T.let(
                  :"Sustainable & Ethical Fashion",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RESALE_VINTAGE_CIRCULAR_FASHION =
                T.let(
                  :"Resale, Vintage & Circular Fashion",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FASHION_TECH_VIRTUAL_TRY_ONS =
                T.let(
                  :"Fashion Tech & Virtual Try-Ons",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              STREETWEAR_EMERGING_LUXURY =
                T.let(
                  :"Streetwear & Emerging Luxury",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              COUTURE_MADE_TO_MEASURE =
                T.let(
                  :"Couture & Made-to-Measure",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              NEWS_PUBLISHING_JOURNALISM =
                T.let(
                  :"News Publishing & Journalism",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DIGITAL_MEDIA_CONTENT_PLATFORMS =
                T.let(
                  :"Digital Media & Content Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BROADCASTING_TV_RADIO =
                T.let(
                  :"Broadcasting (TV & Radio)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PODCASTING_AUDIO_MEDIA =
                T.let(
                  :"Podcasting & Audio Media",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              NEWS_AGGREGATORS_CURATION_TOOLS =
                T.let(
                  :"News Aggregators & Curation Tools",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INDEPENDENT_CREATOR_LED_MEDIA =
                T.let(
                  :"Independent & Creator-Led Media",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              NEWSLETTERS_SUBSTACK_STYLE_PLATFORMS =
                T.let(
                  :"Newsletters & Substack-Style Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              POLITICAL_INVESTIGATIVE_MEDIA =
                T.let(
                  :"Political & Investigative Media",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TRADE_NICHE_PUBLICATIONS =
                T.let(
                  :"Trade & Niche Publications",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MEDIA_MONITORING_ANALYTICS =
                T.let(
                  :"Media Monitoring & Analytics",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PROFESSIONAL_TEAMS_LEAGUES =
                T.let(
                  :"Professional Teams & Leagues",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPORTS_MEDIA_BROADCASTING =
                T.let(
                  :"Sports Media & Broadcasting",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPORTS_BETTING_FANTASY_SPORTS =
                T.let(
                  :"Sports Betting & Fantasy Sports",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FITNESS_ATHLETIC_TRAINING_PLATFORMS =
                T.let(
                  :"Fitness & Athletic Training Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPORTSWEAR_EQUIPMENT =
                T.let(
                  :"Sportswear & Equipment",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ESPORTS_COMPETITIVE_GAMING =
                T.let(
                  :"Esports & Competitive Gaming",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPORTS_VENUES_EVENT_MANAGEMENT =
                T.let(
                  :"Sports Venues & Event Management",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ATHLETE_MANAGEMENT_TALENT_AGENCIES =
                T.let(
                  :"Athlete Management & Talent Agencies",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPORTS_TECH_PERFORMANCE_ANALYTICS =
                T.let(
                  :"Sports Tech & Performance Analytics",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              YOUTH_AMATEUR_COLLEGIATE_SPORTS =
                T.let(
                  :"Youth, Amateur & Collegiate Sports",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              REAL_ESTATE_MARKETPLACES =
                T.let(
                  :"Real Estate Marketplaces",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PROPERTY_MANAGEMENT_SOFTWARE =
                T.let(
                  :"Property Management Software",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RENTAL_PLATFORMS =
                T.let(
                  :"Rental Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MORTGAGE_LENDING_TECH =
                T.let(
                  :"Mortgage & Lending Tech",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              REAL_ESTATE_INVESTMENT_PLATFORMS =
                T.let(
                  :"Real Estate Investment Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LAW_FIRMS_LEGAL_SERVICES =
                T.let(
                  :"Law Firms & Legal Services",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LEGAL_TECH_AUTOMATION =
                T.let(
                  :"Legal Tech & Automation",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              REGULATORY_COMPLIANCE =
                T.let(
                  :"Regulatory Compliance",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              E_DISCOVERY_LITIGATION_TOOLS =
                T.let(
                  :"E-Discovery & Litigation Tools",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONTRACT_MANAGEMENT =
                T.let(
                  :"Contract Management",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              GOVERNANCE_RISK_COMPLIANCE_GRC =
                T.let(
                  :"Governance, Risk & Compliance (GRC)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              IP_TRADEMARK_MANAGEMENT =
                T.let(
                  :"IP & Trademark Management",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LEGAL_RESEARCH_INTELLIGENCE =
                T.let(
                  :"Legal Research & Intelligence",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              COMPLIANCE_TRAINING_CERTIFICATION =
                T.let(
                  :"Compliance Training & Certification",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              WHISTLEBLOWER_ETHICS_REPORTING =
                T.let(
                  :"Whistleblower & Ethics Reporting",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MOBILE_WIRELESS_NETWORKS_3_G_4_G_5_G =
                T.let(
                  :"Mobile & Wireless Networks (3G/4G/5G)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BROADBAND_FIBER_INTERNET =
                T.let(
                  :"Broadband & Fiber Internet",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SATELLITE_SPACE_BASED_COMMUNICATIONS =
                T.let(
                  :"Satellite & Space-Based Communications",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              NETWORK_EQUIPMENT_INFRASTRUCTURE =
                T.let(
                  :"Network Equipment & Infrastructure",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TELECOM_BILLING_OSS_BSS_SYSTEMS =
                T.let(
                  :"Telecom Billing & OSS/BSS Systems",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              VO_IP_UNIFIED_COMMUNICATIONS =
                T.let(
                  :"VoIP & Unified Communications",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INTERNET_SERVICE_PROVIDERS_IS_PS =
                T.let(
                  :"Internet Service Providers (ISPs)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EDGE_COMPUTING_NETWORK_VIRTUALIZATION =
                T.let(
                  :"Edge Computing & Network Virtualization",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              IO_T_CONNECTIVITY_PLATFORMS =
                T.let(
                  :"IoT Connectivity Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PRECISION_AGRICULTURE_AG_TECH =
                T.let(
                  :"Precision Agriculture & AgTech",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CROP_LIVESTOCK_PRODUCTION =
                T.let(
                  :"Crop & Livestock Production",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FOOD_BEVERAGE_MANUFACTURING_PROCESSING =
                T.let(
                  :"Food & Beverage Manufacturing & Processing",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FOOD_DISTRIBUTION =
                T.let(
                  :"Food Distribution",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RESTAURANTS_FOOD_SERVICE =
                T.let(
                  :"Restaurants & Food Service",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AGRICULTURAL_INPUTS_EQUIPMENT =
                T.let(
                  :"Agricultural Inputs & Equipment",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUSTAINABLE_REGENERATIVE_AGRICULTURE =
                T.let(
                  :"Sustainable & Regenerative Agriculture",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SEAFOOD_AQUACULTURE =
                T.let(
                  :"Seafood & Aquaculture",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MANAGEMENT_CONSULTING =
                T.let(
                  :"Management Consulting",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MARKETING_ADVERTISING_AGENCIES =
                T.let(
                  :"Marketing & Advertising Agencies",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DESIGN_BRANDING_CREATIVE_STUDIOS =
                T.let(
                  :"Design, Branding & Creative Studios",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              IT_SERVICES_MANAGED_SERVICES =
                T.let(
                  :"IT Services & Managed Services",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              STAFFING_RECRUITING_TALENT =
                T.let(
                  :"Staffing, Recruiting & Talent",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ACCOUNTING_TAX_FIRMS =
                T.let(
                  :"Accounting & Tax Firms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PUBLIC_RELATIONS_COMMUNICATIONS =
                T.let(
                  :"Public Relations & Communications",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BUSINESS_PROCESS_OUTSOURCING_BPO =
                T.let(
                  :"Business Process Outsourcing (BPO)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PROFESSIONAL_TRAINING_COACHING =
                T.let(
                  :"Professional Training & Coaching",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPECIALTY_CHEMICALS =
                T.let(
                  :"Specialty Chemicals",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              COMMODITY_PETROCHEMICALS =
                T.let(
                  :"Commodity & Petrochemicals",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              POLYMERS_PLASTICS_RUBBER =
                T.let(
                  :"Polymers, Plastics & Rubber",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              COATINGS_ADHESIVES_SEALANTS =
                T.let(
                  :"Coatings, Adhesives & Sealants",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INDUSTRIAL_GASES =
                T.let(
                  :"Industrial Gases",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ADVANCED_MATERIALS_COMPOSITES =
                T.let(
                  :"Advanced Materials & Composites",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BATTERY_MATERIALS_ENERGY_STORAGE =
                T.let(
                  :"Battery Materials & Energy Storage",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ELECTRONIC_MATERIALS_SEMICONDUCTOR_CHEMICALS =
                T.let(
                  :"Electronic Materials & Semiconductor Chemicals",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AGROCHEMICALS_FERTILIZERS =
                T.let(
                  :"Agrochemicals & Fertilizers",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FREIGHT_TRANSPORTATION_TECH =
                T.let(
                  :"Freight & Transportation Tech",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LAST_MILE_DELIVERY =
                T.let(
                  :"Last-Mile Delivery",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              WAREHOUSE_AUTOMATION =
                T.let(
                  :"Warehouse Automation",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUPPLY_CHAIN_VISIBILITY_PLATFORMS =
                T.let(
                  :"Supply Chain Visibility Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LOGISTICS_MARKETPLACES =
                T.let(
                  :"Logistics Marketplaces",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SHIPPING_FREIGHT_FORWARDING =
                T.let(
                  :"Shipping & Freight Forwarding",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              COLD_CHAIN_LOGISTICS =
                T.let(
                  :"Cold Chain Logistics",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              REVERSE_LOGISTICS_RETURNS =
                T.let(
                  :"Reverse Logistics & Returns",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CROSS_BORDER_TRADE_TECH =
                T.let(
                  :"Cross-Border Trade Tech",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TRANSPORTATION_MANAGEMENT_SYSTEMS_TMS =
                T.let(
                  :"Transportation Management Systems (TMS)",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HOTELS_ACCOMMODATION =
                T.let(
                  :"Hotels & Accommodation",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              VACATION_RENTALS_SHORT_TERM_STAYS =
                T.let(
                  :"Vacation Rentals & Short-Term Stays",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RESTAURANT_TECH_MANAGEMENT =
                T.let(
                  :"Restaurant Tech & Management",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TRAVEL_BOOKING_PLATFORMS =
                T.let(
                  :"Travel Booking Platforms",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TOURISM_EXPERIENCES_ACTIVITIES =
                T.let(
                  :"Tourism Experiences & Activities",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CRUISE_LINES_MARINE_TOURISM =
                T.let(
                  :"Cruise Lines & Marine Tourism",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HOSPITALITY_MANAGEMENT_SYSTEMS =
                T.let(
                  :"Hospitality Management Systems",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EVENT_VENUE_MANAGEMENT =
                T.let(
                  :"Event & Venue Management",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CORPORATE_TRAVEL_MANAGEMENT =
                T.let(
                  :"Corporate Travel Management",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TRAVEL_INSURANCE_PROTECTION =
                T.let(
                  :"Travel Insurance & Protection",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSTRUCTION_MANAGEMENT_SOFTWARE =
                T.let(
                  :"Construction Management Software",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BIM_CAD_DESIGN_TOOLS =
                T.let(
                  :"BIM/CAD & Design Tools",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSTRUCTION_MARKETPLACES =
                T.let(
                  :"Construction Marketplaces",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EQUIPMENT_RENTAL_MANAGEMENT =
                T.let(
                  :"Equipment Rental & Management",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BUILDING_MATERIALS_PROCUREMENT =
                T.let(
                  :"Building Materials & Procurement",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSTRUCTION_WORKFORCE_MANAGEMENT =
                T.let(
                  :"Construction Workforce Management",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PROJECT_ESTIMATION_BIDDING =
                T.let(
                  :"Project Estimation & Bidding",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MODULAR_PREFAB_CONSTRUCTION =
                T.let(
                  :"Modular & Prefab Construction",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSTRUCTION_SAFETY_COMPLIANCE =
                T.let(
                  :"Construction Safety & Compliance",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SMART_BUILDING_TECHNOLOGY =
                T.let(
                  :"Smart Building Technology",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FOOD_BEVERAGE_CPG =
                T.let(
                  :"Food & Beverage CPG",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HOME_PERSONAL_CARE_CPG =
                T.let(
                  :"Home & Personal Care CPG",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CPG_ANALYTICS_INSIGHTS =
                T.let(
                  :"CPG Analytics & Insights",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DIRECT_TO_CONSUMER_CPG_BRANDS =
                T.let(
                  :"Direct-to-Consumer CPG Brands",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CPG_SUPPLY_CHAIN_DISTRIBUTION =
                T.let(
                  :"CPG Supply Chain & Distribution",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PRIVATE_LABEL_MANUFACTURING =
                T.let(
                  :"Private Label Manufacturing",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CPG_RETAIL_INTELLIGENCE =
                T.let(
                  :"CPG Retail Intelligence",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUSTAINABLE_CPG_PACKAGING =
                T.let(
                  :"Sustainable CPG & Packaging",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BEAUTY_COSMETICS_CPG =
                T.let(
                  :"Beauty & Cosmetics CPG",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HEALTH_WELLNESS_CPG =
                T.let(
                  :"Health & Wellness CPG",
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Links < ContextDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Links,
                ContextDev::Internal::AnyHash
              )
            end

          # URL to the brand's blog or news page
          sig { returns(T.nilable(String)) }
          attr_accessor :blog

          # URL to the brand's careers or job opportunities page
          sig { returns(T.nilable(String)) }
          attr_accessor :careers

          # URL to the brand's contact or contact us page
          sig { returns(T.nilable(String)) }
          attr_accessor :contact

          # URL to the brand's pricing or plans page
          sig { returns(T.nilable(String)) }
          attr_accessor :pricing

          # URL to the brand's privacy policy page
          sig { returns(T.nilable(String)) }
          attr_accessor :privacy

          # URL to the brand's terms of service or terms and conditions page
          sig { returns(T.nilable(String)) }
          attr_accessor :terms

          # Important website links for the brand
          sig do
            params(
              blog: T.nilable(String),
              careers: T.nilable(String),
              contact: T.nilable(String),
              pricing: T.nilable(String),
              privacy: T.nilable(String),
              terms: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # URL to the brand's blog or news page
            blog: nil,
            # URL to the brand's careers or job opportunities page
            careers: nil,
            # URL to the brand's contact or contact us page
            contact: nil,
            # URL to the brand's pricing or plans page
            pricing: nil,
            # URL to the brand's privacy policy page
            privacy: nil,
            # URL to the brand's terms of service or terms and conditions page
            terms: nil
          )
          end

          sig do
            override.returns(
              {
                blog: T.nilable(String),
                careers: T.nilable(String),
                contact: T.nilable(String),
                pricing: T.nilable(String),
                privacy: T.nilable(String),
                terms: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Logo < ContextDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo,
                ContextDev::Internal::AnyHash
              )
            end

          # Array of colors in the logo
          sig do
            returns(
              T.nilable(
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Color
                ]
              )
            )
          end
          attr_reader :colors

          sig do
            params(
              colors:
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Color::OrHash
                ]
            ).void
          end
          attr_writer :colors

          # Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
          # best for dark mode, 'has_opaque_background' = can be used for either as image
          # has its own background
          sig do
            returns(
              T.nilable(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Mode::TaggedSymbol
              )
            )
          end
          attr_reader :mode

          sig do
            params(
              mode:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Mode::OrSymbol
            ).void
          end
          attr_writer :mode

          # Resolution of the logo image
          sig do
            returns(
              T.nilable(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Resolution
              )
            )
          end
          attr_reader :resolution

          sig do
            params(
              resolution:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Resolution::OrHash
            ).void
          end
          attr_writer :resolution

          # Type of the logo based on resolution (e.g., 'icon', 'logo')
          sig do
            returns(
              T.nilable(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # CDN hosted url of the logo (ready for display)
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(
              colors:
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Color::OrHash
                ],
              mode:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Mode::OrSymbol,
              resolution:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Resolution::OrHash,
              type:
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Type::OrSymbol,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of colors in the logo
            colors: nil,
            # Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
            # best for dark mode, 'has_opaque_background' = can be used for either as image
            # has its own background
            mode: nil,
            # Resolution of the logo image
            resolution: nil,
            # Type of the logo based on resolution (e.g., 'icon', 'logo')
            type: nil,
            # CDN hosted url of the logo (ready for display)
            url: nil
          )
          end

          sig do
            override.returns(
              {
                colors:
                  T::Array[
                    ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Color
                  ],
                mode:
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Mode::TaggedSymbol,
                resolution:
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Resolution,
                type:
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Type::TaggedSymbol,
                url: String
              }
            )
          end
          def to_hash
          end

          class Color < ContextDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Color,
                  ContextDev::Internal::AnyHash
                )
              end

            # Color in hexadecimal format
            sig { returns(T.nilable(String)) }
            attr_reader :hex

            sig { params(hex: String).void }
            attr_writer :hex

            # Name of the color
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { params(hex: String, name: String).returns(T.attached_class) }
            def self.new(
              # Color in hexadecimal format
              hex: nil,
              # Name of the color
              name: nil
            )
            end

            sig { override.returns({ hex: String, name: String }) }
            def to_hash
            end
          end

          # Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
          # best for dark mode, 'has_opaque_background' = can be used for either as image
          # has its own background
          module Mode
            extend ContextDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Mode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LIGHT =
              T.let(
                :light,
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Mode::TaggedSymbol
              )
            DARK =
              T.let(
                :dark,
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Mode::TaggedSymbol
              )
            HAS_OPAQUE_BACKGROUND =
              T.let(
                :has_opaque_background,
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Mode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Mode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Resolution < ContextDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Resolution,
                  ContextDev::Internal::AnyHash
                )
              end

            # Aspect ratio of the image (width/height)
            sig { returns(T.nilable(Float)) }
            attr_reader :aspect_ratio

            sig { params(aspect_ratio: Float).void }
            attr_writer :aspect_ratio

            # Height of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :height

            sig { params(height: Integer).void }
            attr_writer :height

            # Width of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :width

            sig { params(width: Integer).void }
            attr_writer :width

            # Resolution of the logo image
            sig do
              params(
                aspect_ratio: Float,
                height: Integer,
                width: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Aspect ratio of the image (width/height)
              aspect_ratio: nil,
              # Height of the image in pixels
              height: nil,
              # Width of the image in pixels
              width: nil
            )
            end

            sig do
              override.returns(
                { aspect_ratio: Float, height: Integer, width: Integer }
              )
            end
            def to_hash
            end
          end

          # Type of the logo based on resolution (e.g., 'icon', 'logo')
          module Type
            extend ContextDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ICON =
              T.let(
                :icon,
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Type::TaggedSymbol
              )
            LOGO =
              T.let(
                :logo,
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Logo::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Social < ContextDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Social,
                ContextDev::Internal::AnyHash
              )
            end

          # Type of social media, e.g., 'facebook', 'twitter'
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # URL of the social media page
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig { params(type: String, url: String).returns(T.attached_class) }
          def self.new(
            # Type of social media, e.g., 'facebook', 'twitter'
            type: nil,
            # URL of the social media page
            url: nil
          )
          end

          sig { override.returns({ type: String, url: String }) }
          def to_hash
          end
        end

        class Stock < ContextDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ContextDev::Models::BrandRetrieveByIsinResponse::Brand::Stock,
                ContextDev::Internal::AnyHash
              )
            end

          # Stock exchange name
          sig { returns(T.nilable(String)) }
          attr_reader :exchange

          sig { params(exchange: String).void }
          attr_writer :exchange

          # Stock ticker symbol
          sig { returns(T.nilable(String)) }
          attr_reader :ticker

          sig { params(ticker: String).void }
          attr_writer :ticker

          # Stock market information for this brand (will be null if not a publicly traded
          # company)
          sig do
            params(exchange: String, ticker: String).returns(T.attached_class)
          end
          def self.new(
            # Stock exchange name
            exchange: nil,
            # Stock ticker symbol
            ticker: nil
          )
          end

          sig { override.returns({ exchange: String, ticker: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
