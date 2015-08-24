;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:
(liby 'weather-metno
  (command (weather-metno-forecast) "weather-metno")
  (setq weather-metno-location-name "Southern Finland, Finland"
        weather-metno-location-latitude 60
        weather-metno-location-longitude 24))

;;; init.el ends here
