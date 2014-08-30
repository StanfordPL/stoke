  .text
  .globl mbrtowc@plt
  .type mbrtowc@plt, @function
mbrtowc@plt:
  jmpq   *0x209b9a(%rip)        
  pushq  $0x13
  jmpq   .L_4013d0
  .size mbrtowc@plt, .-mbrtowc@plt
