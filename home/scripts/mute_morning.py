import datetime
import os


MUTE_CMD = "osascript -e 'set volume output volume 0'"

JOB_TIME = datetime.datetime.combine(
    datetime.date.today(),
    datetime.time(5, 0),  # 5:00 AM
)

DELTA = datetime.timedelta(minutes=5)

# check if system time is between 5:00 and 5:05
now = datetime.datetime.now()
if now > JOB_TIME + DELTA:
    os.system(MUTE_CMD)
