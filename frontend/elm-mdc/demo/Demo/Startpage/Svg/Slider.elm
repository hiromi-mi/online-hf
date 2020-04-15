module Demo.Startpage.Svg.Slider exposing (view)

import Html exposing (Html)
import Svg exposing (defs, desc, g, mask, path, rect, svg, text, text_, title, tspan, use)
import Svg.Attributes exposing (d, fill, fillRule, fontFamily, fontSize, fontWeight, height, id, letterSpacing, opacity, rx, stroke, strokeWidth, style, transform, version, viewBox, width, x, xlinkHref, y)


view : Html msg
view =
    svg [ viewBox "0 0 180 180", version "1.1", style "background: #FAFAFA;" ]
        [ title []
            [ text "slider_108px" ]
        , desc []
            [ text "Created with Sketch." ]
        , defs []
            [ rect [ id "__3eUOzyN__path-1", x "0", y "0", width "180", height "180" ]
                []
            , rect [ id "__3eUOzyN__path-3", x "0", y "3", width "142", height "2", rx "1" ]
                []
            , rect [ id "__3eUOzyN__path-5", x "0", y "3", width "86", height "2", rx "1" ]
                []
            , rect [ id "__3eUOzyN__path-7", x "9.05941988e-14", y "0", width "12", height "12", rx "6" ]
                []
            , path [ d "M27.3201,27.31 C25.0301,29.6 17.0001,35.8114648 17.0001,43.0014648 L17.0001,46.0041504 C17.0001,49.0541504 19.5401,51.06 20.2401,51.76 C21.3301,52.84 22.0001,54.34 22.0001,56 C22.0001,59.31 19.3201,62 16.0001,62 C12.6801,62 10.0001,59.31 10.0001,56 C10.0001,54.34 10.6701,52.84 11.7501,51.76 C12.4601,51.06 15.0001,49.0541504 15.0001,46.0041504 C15.0001,43.9708171 15.0001,42.9699219 15.0001,43.0014648 C15.0001,35.8114648 6.9701,29.6 4.6801,27.31 C1.7901,24.42 9.99999993e-05,20.42 9.99999993e-05,16 C9.99999993e-05,7.16 7.1501,0.01 16.0001,0 C24.8501,0.01 32.0001,7.16 32.0001,16 C32.0001,20.42 30.2101,24.42 27.3201,27.31 Z", id "__3eUOzyN__path-9" ]
                []
            ]
        , g [ id "__3eUOzyN__slider_108px", stroke "none", strokeWidth "1", fill "none", fillRule "evenodd" ]
            [ g [ id "__3eUOzyN__Group" ]
                [ mask [ id "__3eUOzyN__mask-2", fill "white" ]
                    [ use [ xlinkHref "#__3eUOzyN__path-1" ]
                        []
                    ]
                , use [ id "__3eUOzyN__Mask", fill "#FAFAFA", xlinkHref "#__3eUOzyN__path-1" ]
                    []
                , g [ id "__3eUOzyN__Slider-/-with-Value", Svg.Attributes.mask "url(#__3eUOzyN__mask-2)" ]
                    [ g [ transform "translate(19.000000, 50.000000)" ]
                        [ g [ id "__3eUOzyN__Slider-/-Continuous", transform "translate(0.000000, 32.000000)" ]
                            [ g [ id "__3eUOzyN__Slider-/-Elements-/-Rail-/-Track", transform "translate(0.000000, 20.000000)" ]
                                [ mask [ id "__3eUOzyN__mask-4", fill "white" ]
                                    [ use [ xlinkHref "#__3eUOzyN__path-3" ]
                                        []
                                    ]
                                , use [ id "__3eUOzyN__Surface", fill "#FAFAFA", fillRule "evenodd", xlinkHref "#__3eUOzyN__path-3" ]
                                    []
                                , g [ id "__3eUOzyN__?-/-Color-/-Primary-/-Main", opacity "0.24", Svg.Attributes.mask "url(#__3eUOzyN__mask-4)", fill "#212121", fillRule "evenodd" ]
                                    [ g [ id "__3eUOzyN__?-/-Color-/-Primary-/-900" ]
                                        [ rect [ id "__3eUOzyN__Rectangle-13", x "0", y "0", width "142", height "8" ]
                                            []
                                        ]
                                    ]
                                ]
                            , g [ id "__3eUOzyN__Slider-/-Elements-/-Rail-/-Selected", transform "translate(0.000000, 20.000000)" ]
                                [ mask [ id "__3eUOzyN__mask-6", fill "white" ]
                                    [ use [ xlinkHref "#__3eUOzyN__path-5" ]
                                        []
                                    ]
                                , use [ id "__3eUOzyN__Surface", fill "#FAFAFA", fillRule "evenodd", xlinkHref "#__3eUOzyN__path-5" ]
                                    []
                                , g [ id "__3eUOzyN__?-/-Color-/-Primary-/-Main", Svg.Attributes.mask "url(#__3eUOzyN__mask-6)", fill "#212121", fillRule "evenodd" ]
                                    [ g [ id "__3eUOzyN__?-/-Color-/-Primary-/-900" ]
                                        [ rect [ id "__3eUOzyN__Rectangle-13", x "0", y "0", width "86", height "8" ]
                                            []
                                        ]
                                    ]
                                ]
                            , g [ id "__3eUOzyN__Slider-/-Elements-/-Knob", transform "translate(79.000000, 18.000000)" ]
                                [ mask [ id "__3eUOzyN__mask-8", fill "white" ]
                                    [ use [ xlinkHref "#__3eUOzyN__path-7" ]
                                        []
                                    ]
                                , use [ id "__3eUOzyN__Surface", fill "#FAFAFA", fillRule "evenodd", xlinkHref "#__3eUOzyN__path-7" ]
                                    []
                                , g [ id "__3eUOzyN__?-/-Color-/-Primary-/-Main", Svg.Attributes.mask "url(#__3eUOzyN__mask-8)", fill "#212121", fillRule "evenodd" ]
                                    [ g [ id "__3eUOzyN__?-/-Color-/-Primary-/-900" ]
                                        [ rect [ id "__3eUOzyN__Rectangle-13", x "0", y "0", width "12", height "12" ]
                                            []
                                        ]
                                    ]
                                ]
                            ]
                        , g [ id "__3eUOzyN__Slider-/-Elements-/-Value-Indicator", transform "translate(69.000000, 0.000000)" ]
                            [ mask [ id "__3eUOzyN__mask-10", fill "white" ]
                                [ use [ xlinkHref "#__3eUOzyN__path-9" ]
                                    []
                                ]
                            , use [ id "__3eUOzyN__Mask", fill "#DB33D7", fillRule "evenodd", xlinkHref "#__3eUOzyN__path-9" ]
                                []
                            , g [ id "__3eUOzyN__?-/-Color-/-Primary-/-Main", Svg.Attributes.mask "url(#__3eUOzyN__mask-10)", fill "#212121", fillRule "evenodd" ]
                                [ g [ id "__3eUOzyN__?-/-Color-/-Primary-/-900" ]
                                    [ rect [ id "__3eUOzyN__Rectangle-13", x "0", y "0", width "32", height "62" ]
                                        []
                                    ]
                                ]
                            , g [ id "__3eUOzyN__Text-/-Caption-/-P---Dark-/-Center", Svg.Attributes.mask "url(#__3eUOzyN__mask-10)", fontFamily "Roboto-Regular, Roboto", fontSize "12", fontWeight "normal", letterSpacing "0.400000006" ]
                                [ g [ transform "translate(4.000000, 8.000000)", id "__3eUOzyN__Caption" ]
                                    [ text_ []
                                        [ tspan [ x "4.86171874", y "11", fill "#FFFFFF" ]
                                            [ text "60" ]
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]