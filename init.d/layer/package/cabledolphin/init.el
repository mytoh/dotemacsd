;;; init.el --- cabledolphin                         -*- lexical-binding: t; -*-


(liby 'cabledolphin
  (command (cabledolphin-trace-existing-connection
            cabledolphin-trace-new-connections)
           "cabledolphin"))
