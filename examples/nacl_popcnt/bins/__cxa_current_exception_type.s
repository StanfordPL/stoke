  .text
  .globl __cxa_current_exception_type
  .type __cxa_current_exception_type, @function

#! file-offset 0x58ce0
#! rip-offset  0x58ce0
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  
.__cxa_current_exception_type:   #        0x58ce0  0      
  subl $0x8, %esp                #  1     0x58ce0  3      
  addq %r15, %rsp                #  2     0x58ce3  3      
  nop                            #  3     0x58ce6  1      
  nop                            #  4     0x58ce7  1      
  callq .__cxa_get_globals       #  5     0x58ce8  5      
  movl %eax, %eax                #  6     0x58ced  2      
  movl %eax, %eax                #  7     0x58cef  2      
  movl (%r15,%rax,1), %edx       #  8     0x58cf1  4      
  xorl %eax, %eax                #  9     0x58cf5  2      
  testq %rdx, %rdx               #  10    0x58cf7  3      
  je .L_58d40                    #  11    0x58cfa  6      
  movl %edx, %edx                #  12    0x58d00  2      
  testb $0x1, 0x30(%r15,%rdx,1)  #  13    0x58d02  6      
  jne .L_58d60                   #  14    0x58d08  6      
  nop                            #  15    0x58d0e  1      
.L_58d20:                        #        0x58d0f  0      
  movl %edx, %edx                #  16    0x58d0f  2      
  movl (%r15,%rdx,1), %eax       #  17    0x58d11  4      
  nop                            #  18    0x58d15  1      
  nop                            #  19    0x58d16  1      
.L_58d40:                        #        0x58d17  0      
  addl $0x8, %esp                #  20    0x58d17  3      
  addq %r15, %rsp                #  21    0x58d1a  3      
  popq %r11                      #  22    0x58d1d  3      
  andl $0xffffffe0, %r11d        #  23    0x58d20  7      
  addq %r15, %r11                #  24    0x58d27  3      
  jmpq %r11                      #  25    0x58d2a  3      
  nop                            #  26    0x58d2d  1      
.L_58d60:                        #        0x58d2e  0      
  movl %edx, %edx                #  27    0x58d2e  2      
  movl (%r15,%rdx,1), %edx       #  28    0x58d30  4      
  subl $0x50, %edx               #  29    0x58d34  3      
  jmpq .L_58d20                  #  30    0x58d37  5      
  nop                            #  31    0x58d3c  1      
  nop                            #  32    0x58d3d  1      
  nop                            #  33    0x58d3e  1      
  nop                            #  34    0x58d3f  1      
  nop                            #  35    0x58d40  1      
  nop                            #  36    0x58d41  1      
  nop                            #  37    0x58d42  1      
  nop                            #  38    0x58d43  1      
  nop                            #  39    0x58d44  1      
  nop                            #  40    0x58d45  1      
  nop                            #  41    0x58d46  1      
  nop                            #  42    0x58d47  1      
  nop                            #  43    0x58d48  1      
  nop                            #  44    0x58d49  1      
  nop                            #  45    0x58d4a  1      
  nop                            #  46    0x58d4b  1      
  nop                            #  47    0x58d4c  1      
  nop                            #  48    0x58d4d  1      
  nop                            #  49    0x58d4e  1      
  nop                            #  50    0x58d4f  1      
  nop                            #  51    0x58d50  1      
                                                          
.size __cxa_current_exception_type, .-__cxa_current_exception_type

