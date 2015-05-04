  .text
  .globl _ZN17__eh_globals_initD1Ev
  .type _ZN17__eh_globals_initD1Ev, @function

#! file-offset 0x4af20
#! rip-offset  0x4af20
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
._ZN17__eh_globals_initD1Ev:   #        0x4af20  0      
  pushq %rbx                   #  1     0x4af20  2      
  movl %edi, %ebx              #  2     0x4af22  2      
  movl %ebx, %ebx              #  3     0x4af24  2      
  cmpb $0x0, 0x4(%r15,%rbx,1)  #  4     0x4af26  6      
  jne .L_4af60                 #  5     0x4af2c  6      
  movl %ebx, %ebx              #  6     0x4af32  2      
  movb $0x0, 0x4(%r15,%rbx,1)  #  7     0x4af34  6      
  popq %rbx                    #  8     0x4af3a  2      
  popq %r11                    #  9     0x4af3c  3      
  nop                          #  10    0x4af3f  1      
  andl $0xffffffe0, %r11d      #  11    0x4af40  7      
  addq %r15, %r11              #  12    0x4af47  3      
  jmpq %r11                    #  13    0x4af4a  3      
  nop                          #  14    0x4af4d  1      
  nop                          #  15    0x4af4e  1      
.L_4af60:                      #        0x4af4f  0      
  movl %ebx, %ebx              #  16    0x4af4f  2      
  movl (%r15,%rbx,1), %edi     #  17    0x4af51  4      
  nop                          #  18    0x4af55  1      
  nop                          #  19    0x4af56  1      
  callq .pthread_key_delete    #  20    0x4af57  5      
  movl %ebx, %ebx              #  21    0x4af5c  2      
  movb $0x0, 0x4(%r15,%rbx,1)  #  22    0x4af5e  6      
  popq %rbx                    #  23    0x4af64  2      
  popq %r11                    #  24    0x4af66  3      
  andl $0xffffffe0, %r11d      #  25    0x4af69  7      
  addq %r15, %r11              #  26    0x4af70  3      
  jmpq %r11                    #  27    0x4af73  3      
  nop                          #  28    0x4af76  1      
  nop                          #  29    0x4af77  1      
  nop                          #  30    0x4af78  1      
  nop                          #  31    0x4af79  1      
  nop                          #  32    0x4af7a  1      
  nop                          #  33    0x4af7b  1      
  nop                          #  34    0x4af7c  1      
  nop                          #  35    0x4af7d  1      
  nop                          #  36    0x4af7e  1      
  nop                          #  37    0x4af7f  1      
  nop                          #  38    0x4af80  1      
                                                        
.size _ZN17__eh_globals_initD1Ev, .-_ZN17__eh_globals_initD1Ev

