bits 16

fast_a20:
  mov al, 0x92
  test al, 0x02


[ORG 0x7c00]

  jmp fast_a20

  jmp main

main:

  jmp main

  times 510-($-$$) db 0
  db 0x55
  db 0xAA
