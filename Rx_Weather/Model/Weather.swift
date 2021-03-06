//
//  Weather.swift
//  Rx_Weather
//
//  Created by LinChico on 2/2/18.
//  Copyright © 2018 RJTCompuquest. All rights reserved.
//

import Foundation

struct Weather {
    let weather: String
    let temperature: Double
    let humidity: Double
    let pressure: Double
    let wind: Double
    let description: String
    let city: String
    let country: String
    let condition : Condition
    
    enum Condition: String {
        
        case Thunderstorm_with_light_rain    =    "Thunderstorm with light rain"
        case Thunderstorm_with_rain    =     "Thunderstorm with rain"
        case Thunderstorm_with_heavy_rain    = "Thunderstorm with heavy rain"
        case Light_thunderstorm    =    "Light thunderstorm"
        case Thunderstorm    =     "Thunderstorm"
        case Heavy_thunderstorm    =   "Heavy thunderstorm"
        case Ragged_thunderstorm    =     "Ragged thunderstorm"
        case Thunderstorm_with_light_drizzle    =   "Thunderstorm with light drizzle"
        case Thunderstorm_with_drizzle    =    "Thunderstorm with drizzle"
        case Thunderstorm_with_heavy_drizzle    = "Thunderstorm with heavy drizzle"
        case Light_intensity_drizzle    =  "Light intensity drizzle"
        case Drizzle    =     "Drizzle"
        case Heavy_intensity_drizzle    =  "Heavy intensity drizzle"
        case Light_intensity_drizzle_rain    =  "Light intensity drizzle rain"
        case Drizzle_rain    =   "Drizzle rain"
        case Heavy_intensity_drizzle_rain    =  "Heavy intensity drizzle rain"
        case Shower_rain_and_drizzle    =  "Shower rain and drizzle"
        case Heavy_shower_rain_and_drizzle    =   "Heavy shower rain and drizzle"
        case Shower_drizzle    =   "Shower drizzle"
        case Light_rain    =    "Light rain"
        case Moderate_rain    =   "Moderate rain"
        case Heavy_intensity_rain    =  "Heavy intensity rain"
        case Very_heavy_rain    =  "Very heavy rain"
        case Extreme_rain    =  "Extreme rain"
        case Freezing_rain    =  "Freezing rain"
        case Light_intensity_shower_rain    =  "Light intensity shower rain"
        case Shower_rain    =   "Shower rain"
        case Heavy_intensity_shower_rain    =   "Heavy intensity shower rain"
        case Ragged_shower_rain    = "Ragged shower rain"
        case Light_snow    =  "Light snow"
        case Snow    =     "Snow"
        case Heavy_snow    =  "Heavy snow"
        case Sleet    =     "Sleet"
        case Shower_sleet    =  "Shower sleet"
        case Light_rain_and_snow    = "Light rain and snow"
        case Rain_and_snow    =   "Rain and snow"
        case Light_shower_snow    =  "Light shower snow"
        case Shower_snow    =  "Shower snow"
        case Heavy_shower_snow    = "Heavy shower snow"
        case Mist    =     "Mist"
        case Smoke    =     "Smoke"
        case Haze    =     "Haze"
        case Sand_dust_whirls    =   "Sand, dust whirls"
        case Fog    =     "Fog"
        case Sand    =     "Sand"
        case Dust    =     "Dust"
        case Volcanic_ash    =   "Volcanic ash"
        case Squalls    =     "Squalls"
        case Tornado    =     "Tornado"
        case Clear_sky    =  "Clear sky"
        case Few_clouds    =  "Few clouds"
        case Scattered_clouds    =   "Scattered clouds"
        case Broken_clouds    =   "Broken clouds"
        case Overcast_clouds    =   "Overcast clouds"
        case Cloud = "Clouds"
        case Rain = "Rain"
        case Clear = "Clear"
        case Clear_throughout_the_day = "Clear throughout the day."
        case Partly_Cloudy = "Partly Cloudy"
        case Partly_cloudy_overnight = "Partly cloudy overnight."
        case Partly_cloudy_until_afternoon = "Partly cloudy until afternoon."
        case Mostly_cloudy_starting_in_the_evening = "Mostly cloudy starting in the evening."
        case Mostly_cloudy_throughout_the_day = "Mostly cloudy throughout the day."
        case Partly_cloudy_in_the_morning = "Partly cloudy in the morning."
        case Light_rain_starting_in_the_afternoon_continuing_until_evening = "Light rain starting in the afternoon, continuing until evening."
        case Mostly_cloudy_until_afternoon = "Mostly cloudy until afternoon."
        case Partly_cloudy_starting_in_the_evening = "Partly cloudy starting in the evening."
        
        var bgdTitle: String {
            
            var title : String? = nil
            switch self {
            case .Thunderstorm_with_light_rain, .Thunderstorm_with_rain, .Thunderstorm_with_heavy_rain, .Light_thunderstorm, .Thunderstorm, .Heavy_thunderstorm, .Ragged_thunderstorm, .Thunderstorm_with_light_drizzle, .Thunderstorm_with_drizzle, .Thunderstorm_with_heavy_drizzle:   title = "thunder_bgd"
            case .Light_intensity_drizzle, .Drizzle, .Heavy_intensity_drizzle, .Light_intensity_drizzle_rain, .Drizzle_rain, .Heavy_intensity_drizzle_rain, .Shower_rain_and_drizzle, .Heavy_shower_rain_and_drizzle, .Shower_drizzle, .Light_rain, .Moderate_rain, .Heavy_intensity_rain, .Very_heavy_rain, .Extreme_rain, .Light_intensity_shower_rain, .Shower_rain, .Heavy_intensity_shower_rain, .Ragged_shower_rain, .Rain: title = "rainy_bgd"
                
            case .Freezing_rain, .Light_snow, .Snow, .Heavy_snow, .Sleet, .Shower_sleet, .Light_rain_and_snow, .Rain_and_snow, .Light_shower_snow, .Shower_snow, .Heavy_shower_snow, .Tornado:   title = "snowy_bgd"
            case .Mist, .Smoke, .Haze, .Sand_dust_whirls, .Fog, .Sand, .Dust, .Volcanic_ash, .Squalls:   title = "windy_bgd"
            case .Clear_sky:   title = "sunny_bgd"
            case .Clear, .Clear_throughout_the_day: title = "sky_bgd"
            case .Partly_Cloudy, .Partly_cloudy_overnight, .Partly_cloudy_until_afternoon, .Mostly_cloudy_starting_in_the_evening, .Mostly_cloudy_throughout_the_day, .Partly_cloudy_in_the_morning, .Light_rain_starting_in_the_afternoon_continuing_until_evening, .Mostly_cloudy_until_afternoon, .Partly_cloudy_starting_in_the_evening, .Few_clouds,.Scattered_clouds, .Broken_clouds, .Overcast_clouds, .Cloud: title = "cloudy_bgd"
            }
            return title!
        }
        
        
    }
}
