bits 16
[ORG 0x7c00]


main:
  xor ax,ax

  mov si, welcometext
  call printmsg




printmsg:
  lodsb
  or al,al
  jz done
  mov ah,0x0E
  int 0x10
  jmp printmsg

done:
  ret


welcometext db "Welcome to neutron bootloader!",13,10,0


  times 510-($-$$) db 0
  db 0x55
  db 0xAA
