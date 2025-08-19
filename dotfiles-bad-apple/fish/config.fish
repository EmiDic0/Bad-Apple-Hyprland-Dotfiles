if status is-interactive
    fastfetch
    # Commands to run in interactive sessions can go here
end

if status is-login; and test (tty) = /dev/tty1
 exec startw
end

#if status is-login; and test (tty) = /dev/tty2
# exec startplasma-wayland
#end
