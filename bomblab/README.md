# Solutions (bomb136)

> **Warning:** Don't try to copy-paste these solutions. Each student is given different bombs and they have different solutions.

* Phase 1 - `When a problem comes along, you must zip it!`
* Phase 2 - `1 2 4 8 16 32`
* Phase 3 - `1 812`
* Phase 4 - `8 35`
* Phase 5 - `ccccdd`
* Phase 6 - `2 6 1 5 4 3`
* Secret phase - `20`

## Some commands

Here are some commands I used to understand the `bomb` binary file. Maybe they will be helpful.

```
# run GDB silently
gdb -q bomb

# GDB command to set breakpoint at explode_bomb() function
b explode_bomb

# GDB command to set breakpoint at initialize_bomb() function
b initialize_bomb

# GDB command to run the program
r

# GDB command to change register value
set $rip = 0x00000000004014da

# GDB command to set breakpoint at location 0x401247
b *0x401247
```