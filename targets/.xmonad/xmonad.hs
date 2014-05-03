import XMonad
import XMonad.Config.Gnome

main :: IO ()
main = xmonad $ gnomeConfig
  { focusFollowsMouse  = True
  , focusedBorderColor = "#D7FF00"
  , modMask            = mod4Mask }
