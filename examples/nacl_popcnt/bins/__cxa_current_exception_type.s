  .text
  .globl __cxa_current_exception_type
  .type __cxa_current_exception_type, @function

#! file-offset 0x58d80
#! rip-offset  0x58d80
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  
.__cxa_current_exception_type:   #        0x58d80  0      
  subl $0x8, %esp                #  1     0x58d80  3      
  addq %r15, %rsp                #  2     0x58d83  3      
  nop                            #  3     0x58d86  1      
  nop                            #  4     0x58d87  1      
  callq .__cxa_get_globals       #  5     0x58d88  5      
  movl %eax, %eax                #  6     0x58d8d  2      
  movl %eax, %eax                #  7     0x58d8f  2      
  movl (%r15,%rax,1), %edx       #  8     0x58d91  4      
  xorl %eax, %eax                #  9     0x58d95  2      
  testq %rdx, %rdx               #  10    0x58d97  3      
  je .L_58de0                    #  11    0x58d9a  6      
  movl %edx, %edx                #  12    0x58da0  2      
  testb $0x1, 0x30(%r15,%rdx,1)  #  13    0x58da2  6      
  jne .L_58e00                   #  14    0x58da8  6      
  nop                            #  15    0x58dae  1      
.L_58dc0:                        #        0x58daf  0      
  movl %edx, %edx                #  16    0x58daf  2      
  movl (%r15,%rdx,1), %eax       #  17    0x58db1  4      
  nop                            #  18    0x58db5  1      
  nop                            #  19    0x58db6  1      
.L_58de0:                        #        0x58db7  0      
  addl $0x8, %esp                #  20    0x58db7  3      
  addq %r15, %rsp                #  21    0x58dba  3      
  popq %r11                      #  22    0x58dbd  3      
  andl $0xffffffe0, %r11d        #  23    0x58dc0  7      
  addq %r15, %r11                #  24    0x58dc7  3      
  jmpq %r11                      #  25    0x58dca  3      
  nop                            #  26    0x58dcd  1      
.L_58e00:                        #        0x58dce  0      
  movl %edx, %edx                #  27    0x58dce  2      
  movl (%r15,%rdx,1), %edx       #  28    0x58dd0  4      
  subl $0x50, %edx               #  29    0x58dd4  3      
  jmpq .L_58dc0                  #  30    0x58dd7  5      
  nop                            #  31    0x58ddc  1      
  nop                            #  32    0x58ddd  1      
  nop                            #  33    0x58dde  1      
  nop                            #  34    0x58ddf  1      
  nop                            #  35    0x58de0  1      
  nop                            #  36    0x58de1  1      
  nop                            #  37    0x58de2  1      
  nop                            #  38    0x58de3  1      
  nop                            #  39    0x58de4  1      
  nop                            #  40    0x58de5  1      
  nop                            #  41    0x58de6  1      
  nop                            #  42    0x58de7  1      
  nop                            #  43    0x58de8  1      
  nop                            #  44    0x58de9  1      
  nop                            #  45    0x58dea  1      
  nop                            #  46    0x58deb  1      
  nop                            #  47    0x58dec  1      
  nop                            #  48    0x58ded  1      
  nop                            #  49    0x58dee  1      
  nop                            #  50    0x58def  1      
  nop                            #  51    0x58df0  1      
                                                          
.size __cxa_current_exception_type, .-__cxa_current_exception_type

