  .text
  .globl _ZN2pp7FileRefC1ERKS0_
  .type _ZN2pp7FileRefC1ERKS0_, @function

#! file-offset 0x30880
#! rip-offset  0x30880
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp7FileRefC1ERKS0_:           #        0x30880  0      
  pushq %rbx                       #  1     0x30880  2      
  movl %edi, %ebx                  #  2     0x30882  2      
  movl %esi, %esi                  #  3     0x30884  2      
  movl %ebx, %edi                  #  4     0x30886  2      
  nop                              #  5     0x30888  1      
  nop                              #  6     0x30889  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x3088a  5      
  movl %ebx, %ebx                  #  8     0x3088f  2      
  movl $0x100204e8, (%r15,%rbx,1)  #  9     0x30891  8      
  popq %rbx                        #  10    0x30899  2      
  popq %r11                        #  11    0x3089b  3      
  andl $0xffffffe0, %r11d          #  12    0x3089e  7      
  addq %r15, %r11                  #  13    0x308a5  3      
  jmpq %r11                        #  14    0x308a8  3      
  nop                              #  15    0x308ab  1      
  nop                              #  16    0x308ac  1      
                                                            
.size _ZN2pp7FileRefC1ERKS0_, .-_ZN2pp7FileRefC1ERKS0_

