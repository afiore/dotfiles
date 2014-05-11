import XMonad
import XMonad.Config.Gnome
import XMonad.Hooks.SetWMName

main :: IO ()
main = xmonad $ gnomeConfig
  { focusFollowsMouse  = True
  , focusedBorderColor = "#D7FF00"
  , startupHook        = setWMName "LG3D"
  , modMask            = mod4Mask }
