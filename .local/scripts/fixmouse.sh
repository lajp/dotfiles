#!/bin/sh
# Sometimes the mouse just doesn't want to stop movin on it's own

DEVICE="TPPS/2 IBM TrackPoint"

xinput disable "$DEVICE"
xinput enable "$DEVICE"
