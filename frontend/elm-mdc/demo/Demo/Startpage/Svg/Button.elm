module Demo.Startpage.Svg.Button exposing (view)

import Html exposing (Html)
import Svg exposing (defs, desc, feColorMatrix, feGaussianBlur, feMerge, feMergeNode, feOffset, filter, g, mask, path, rect, svg, text, text_, title, tspan, use)
import Svg.Attributes exposing (d, dx, dy, fill, fillOpacity, fillRule, filterUnits, fontFamily, fontSize, fontWeight, height, id, in_, letterSpacing, result, stdDeviation, stroke, strokeWidth, transform, type_, values, version, viewBox, width, x, xlinkHref, y)


view : Html msg
view =
    svg [ viewBox "0 0 180 180", version "1.1" ]
        [ title []
            [ text "buttons_180px " ]
        , desc []
            [ text "Created with Sketch." ]
        , defs []
            [ rect [ id "__WIe452q__path-1", x "0", y "0", width "180", height "180" ]
                []
            , path [ d "M4,0 L98,0 C100.209139,-4.05812251e-16 102,1.790861 102,4 L102,32 C102,34.209139 100.209139,36 98,36 L4,36 C1.790861,36 2.705415e-16,34.209139 0,32 L0,4 C-2.705415e-16,1.790861 1.790861,4.05812251e-16 4,0 Z", id "__WIe452q__path-3" ]
                []
            , filter [ x "-8.8%", y "-16.7%", width "117.6%", height "150.0%", filterUnits "objectBoundingBox", id "__WIe452q__filter-5" ]
                [ feOffset [ dx "0", dy "1", in_ "SourceAlpha", result "shadowOffsetOuter1" ]
                    []
                , feGaussianBlur [ stdDeviation "1.5", in_ "shadowOffsetOuter1", result "shadowBlurOuter1" ]
                    []
                , feColorMatrix [ values "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0", type_ "matrix", in_ "shadowBlurOuter1", result "shadowMatrixOuter1" ]
                    []
                , feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter2" ]
                    []
                , feGaussianBlur [ stdDeviation "1", in_ "shadowOffsetOuter2", result "shadowBlurOuter2" ]
                    []
                , feColorMatrix [ values "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.12 0", type_ "matrix", in_ "shadowBlurOuter2", result "shadowMatrixOuter2" ]
                    []
                , feOffset [ dx "0", dy "0", in_ "SourceAlpha", result "shadowOffsetOuter3" ]
                    []
                , feGaussianBlur [ stdDeviation "1", in_ "shadowOffsetOuter3", result "shadowBlurOuter3" ]
                    []
                , feColorMatrix [ values "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.14 0", type_ "matrix", in_ "shadowBlurOuter3", result "shadowMatrixOuter3" ]
                    []
                , feMerge []
                    [ feMergeNode [ in_ "shadowMatrixOuter1" ]
                        []
                    , feMergeNode [ in_ "shadowMatrixOuter2" ]
                        []
                    , feMergeNode [ in_ "shadowMatrixOuter3" ]
                        []
                    ]
                ]
            ]
        , g [ id "__WIe452q__buttons_180px-", stroke "none", strokeWidth "1", fill "none", fillRule "evenodd" ]
            [ g [ id "__WIe452q__Buttons-/-Contained-/-Enabled" ]
                [ mask [ id "__WIe452q__mask-2", fill "white" ]
                    [ use [ xlinkHref "#__WIe452q__path-1" ]
                        []
                    ]
                , use [ id "__WIe452q__Mask", fill "#FAFAFA", xlinkHref "#__WIe452q__path-1" ]
                    []
                , g [ Svg.Attributes.mask "url(#__WIe452q__mask-2)" ]
                    [ g [ transform "translate(39.000000, 72.000000)" ]
                        [ mask [ id "__WIe452q__mask-4", fill "white" ]
                            [ use [ xlinkHref "#__WIe452q__path-3" ]
                                []
                            ]
                        , g [ id "__WIe452q__Surface", stroke "none", fill "none" ]
                            [ use [ fill "black", fillOpacity "1", Svg.Attributes.filter "url(#__WIe452q__filter-5)", xlinkHref "#__WIe452q__path-3" ]
                                []
                            , use [ fill "#FAFAFA", fillRule "evenodd", xlinkHref "#__WIe452q__path-3" ]
                                []
                            ]
                        , g [ id "__WIe452q__?-/-Color-/-Primary-/-Main", stroke "none", fill "none", Svg.Attributes.mask "url(#__WIe452q__mask-4)", fillRule "evenodd" ]
                            [ g [ id "__WIe452q__?-/-Color-/-Primary-/-500", fill "#212121" ]
                                [ rect [ id "__WIe452q__Rectangle-13", x "0", y "0", width "102", height "36" ]
                                    []
                                ]
                            ]
                        , g [ id "__WIe452q__?-/-Text-/-Button-/-Colorized-/-On-Primary-/-Center", stroke "none", fill "none", Svg.Attributes.mask "url(#__WIe452q__mask-4)", fontFamily "Roboto-Medium, Roboto", fontSize "14", fontWeight "400", letterSpacing "1.25" ]
                            [ g [ transform "translate(16.000000, 10.000000)", id "__WIe452q__Button-Text" ]
                                [ text_ []
                                    [ tspan [ x "4.03613281", y "13", fill "#FFFFFF" ]
                                        [ text "BUTTON" ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
