# frozen_string_literal: true

module ContextDev
  [ContextDev::Internal::Type::BaseModel, *ContextDev::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, ContextDev::Internal::AnyHash) } }
  end

  ContextDev::Internal::Util.walk_namespaces(ContextDev::Models).each do |mod|
    case mod
    in ContextDev::Internal::Type::Enum | ContextDev::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  ContextDev::Internal::Util.walk_namespaces(ContextDev::Models)
                            .lazy
                            .grep(ContextDev::Internal::Type::Union)
                            .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AIAIQueryParams = ContextDev::Models::AIAIQueryParams

  AIExtractProductParams = ContextDev::Models::AIExtractProductParams

  AIExtractProductsParams = ContextDev::Models::AIExtractProductsParams

  BrandIdentifyFromTransactionParams = ContextDev::Models::BrandIdentifyFromTransactionParams

  BrandRetrieveByEmailParams = ContextDev::Models::BrandRetrieveByEmailParams

  BrandRetrieveByIsinParams = ContextDev::Models::BrandRetrieveByIsinParams

  BrandRetrieveByNameParams = ContextDev::Models::BrandRetrieveByNameParams

  BrandRetrieveByTickerParams = ContextDev::Models::BrandRetrieveByTickerParams

  BrandRetrieveParams = ContextDev::Models::BrandRetrieveParams

  BrandRetrieveSimplifiedParams = ContextDev::Models::BrandRetrieveSimplifiedParams

  IndustryRetrieveNaicsParams = ContextDev::Models::IndustryRetrieveNaicsParams

  StyleExtractFontsParams = ContextDev::Models::StyleExtractFontsParams

  StyleExtractStyleguideParams = ContextDev::Models::StyleExtractStyleguideParams

  UtilityPrefetchByEmailParams = ContextDev::Models::UtilityPrefetchByEmailParams

  UtilityPrefetchParams = ContextDev::Models::UtilityPrefetchParams

  WebScreenshotParams = ContextDev::Models::WebScreenshotParams

  WebWebScrapeHTMLParams = ContextDev::Models::WebWebScrapeHTMLParams

  WebWebScrapeImagesParams = ContextDev::Models::WebWebScrapeImagesParams

  WebWebScrapeMdParams = ContextDev::Models::WebWebScrapeMdParams

  WebWebScrapeSitemapParams = ContextDev::Models::WebWebScrapeSitemapParams
end
