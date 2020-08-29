#!/bin/env python

import os

COLOR = {
    'white': '#f8f8f8',
    'gray': '#a8a8a8',
    'red': '#ab4642',
}
SEP = ' ─── '
DOT = '·'

def print_colored(s, c = COLOR['white']):
    print('%{F' + c + '}' + s + '%{F-}', end='')

while True:
    tag_status = os.popen('herbstclient tag_status').readline().strip()
    # split tag_status to (name, status), skip inactive tags
    tags = [(t[1], t[0]) for t in tag_status.split() if t[0] != '.']

    for i, tag in enumerate(tags):
        tname, tstat = tag
        #  print(f'%{{A1: herbstclient use {tname}:}}', end='')
        if tstat == '#': # viewed on focused monitor
            print_colored(tname)
        elif tstat == ':': # not empty
            print_colored(DOT, COLOR['gray'])
        elif tstat == '!': # urgent
            print_colored(DOT, COLOR['gray'])
        elif tstat == '-': # viewed on unfocused monitor
            print_colored(tname, COLOR['red'])
        if i != len(tags) - 1:
            print(SEP, end='')
    print(flush=True)
    # wait for tag event
    tag_event = os.popen('herbstclient --idle \"tag_*\"').readline()

