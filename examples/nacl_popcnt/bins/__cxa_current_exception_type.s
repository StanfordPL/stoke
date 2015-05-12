  .text
  .globl __cxa_current_exception_type
  .type __cxa_current_exception_type, @function

#! file-offset 0x58d00
#! rip-offset  0x58d00
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  
.__cxa_current_exception_type:   #        0x58d00  0      
  subl $0x8, %esp                #  1     0x58d00  3      
  addq %r15, %rsp                #  2     0x58d03  3      
  nop                            #  3     0x58d06  1      
  nop                            #  4     0x58d07  1      
  callq .__cxa_get_globals       #  5     0x58d08  5      
  movl %eax, %eax                #  6     0x58d0d  2      
  movl %eax, %eax                #  7     0x58d0f  2      
  movl (%r15,%rax,1), %edx       #  8     0x58d11  4      
  xorl %eax, %eax                #  9     0x58d15  2      
  testq %rdx, %rdx               #  10    0x58d17  3      
  je .L_58d60                    #  11    0x58d1a  6      
  movl %edx, %edx                #  12    0x58d20  2      
  testb $0x1, 0x30(%r15,%rdx,1)  #  13    0x58d22  6      
  jne .L_58d80                   #  14    0x58d28  6      
  nop                            #  15    0x58d2e  1      
.L_58d40:                        #        0x58d2f  0      
  movl %edx, %edx                #  16    0x58d2f  2      
  movl (%r15,%rdx,1), %eax       #  17    0x58d31  4      
  nop                            #  18    0x58d35  1      
  nop                            #  19    0x58d36  1      
.L_58d60:                        #        0x58d37  0      
  addl $0x8, %esp                #  20    0x58d37  3      
  addq %r15, %rsp                #  21    0x58d3a  3      
  popq %r11                      #  22    0x58d3d  3      
  andl $0xffffffe0, %r11d        #  23    0x58d40  7      
  addq %r15, %r11                #  24    0x58d47  3      
  jmpq %r11                      #  25    0x58d4a  3      
  nop                            #  26    0x58d4d  1      
.L_58d80:                        #        0x58d4e  0      
  movl %edx, %edx                #  27    0x58d4e  2      
  movl (%r15,%rdx,1), %edx       #  28    0x58d50  4      
  subl $0x50, %edx               #  29    0x58d54  3      
  jmpq .L_58d40                  #  30    0x58d57  5      
  nop                            #  31    0x58d5c  1      
  nop                            #  32    0x58d5d  1      
  nop                            #  33    0x58d5e  1      
  nop                            #  34    0x58d5f  1      
  nop                            #  35    0x58d60  1      
  nop                            #  36    0x58d61  1      
  nop                            #  37    0x58d62  1      
  nop                            #  38    0x58d63  1      
  nop                            #  39    0x58d64  1      
  nop                            #  40    0x58d65  1      
  nop                            #  41    0x58d66  1      
  nop                            #  42    0x58d67  1      
  nop                            #  43    0x58d68  1      
  nop                            #  44    0x58d69  1      
  nop                            #  45    0x58d6a  1      
  nop                            #  46    0x58d6b  1      
  nop                            #  47    0x58d6c  1      
  nop                            #  48    0x58d6d  1      
  nop                            #  49    0x58d6e  1      
  nop                            #  50    0x58d6f  1      
  nop                            #  51    0x58d70  1      
                                                          
.size __cxa_current_exception_type, .-__cxa_current_exception_type

