import sys
if len(sys.argv) > 1:
    brightness_percentage = float(sys.argv[2])
else:
    brightness_percentage = 50.4

from gi.repository import Notify
Notify.init("Brightness")
notification = Notify.Notification.new(
    "Brightness",
    ("Brightness is at %.2f" % brightness_percentage) + "%",
    "dialog-information"
)
notification.show()

import time
time.sleep(1)

notification.close()
print("Hidden")

Notify.uninit()
