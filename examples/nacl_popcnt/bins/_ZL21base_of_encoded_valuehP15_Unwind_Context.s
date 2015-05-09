  .text
  .globl _ZL21base_of_encoded_valuehP15_Unwind_Context
  .type _ZL21base_of_encoded_valuehP15_Unwind_Context, @function

#! file-offset 0x49a40
#! rip-offset  0x49a40
#! capacity    288 bytes

# Text                                           #  Line  RIP      Bytes  
._ZL21base_of_encoded_valuehP15_Unwind_Context:  #        0x49a40  0      
  subl $0x8, %esp                                #  1     0x49a40  3      
  addq %r15, %rsp                                #  2     0x49a43  3      
  cmpb $0xff, %dil                               #  3     0x49a46  4      
  movl %esi, %esi                                #  4     0x49a4a  2      
  je .L_49ac0                                    #  5     0x49a4c  6      
  movl %edi, %eax                                #  6     0x49a52  2      
  andl $0x70, %eax                               #  7     0x49a54  3      
  cmpl $0x20, %eax                               #  8     0x49a57  3      
  je .L_49b20                                    #  9     0x49a5a  6      
  nop                                            #  10    0x49a60  1      
  jle .L_49aa0                                   #  11    0x49a61  6      
  cmpl $0x40, %eax                               #  12    0x49a67  3      
  je .L_49b00                                    #  13    0x49a6a  6      
  cmpl $0x50, %eax                               #  14    0x49a70  3      
  je .L_49ac0                                    #  15    0x49a73  6      
  cmpl $0x30, %eax                               #  16    0x49a79  3      
  je .L_49b40                                    #  17    0x49a7c  6      
  nop                                            #  18    0x49a82  1      
.L_49a80:                                        #        0x49a83  0      
  nop                                            #  19    0x49a83  1      
  nop                                            #  20    0x49a84  1      
  callq .abort                                   #  21    0x49a85  5      
.L_49aa0:                                        #        0x49a8a  0      
  testl %eax, %eax                               #  22    0x49a8a  2      
  jne .L_49ae0                                   #  23    0x49a8c  6      
  nop                                            #  24    0x49a92  1      
  nop                                            #  25    0x49a93  1      
.L_49ac0:                                        #        0x49a94  0      
  addl $0x8, %esp                                #  26    0x49a94  3      
  addq %r15, %rsp                                #  27    0x49a97  3      
  xorl %eax, %eax                                #  28    0x49a9a  2      
  popq %r11                                      #  29    0x49a9c  3      
  andl $0xffffffe0, %r11d                        #  30    0x49a9f  7      
  addq %r15, %r11                                #  31    0x49aa6  3      
  jmpq %r11                                      #  32    0x49aa9  3      
  nop                                            #  33    0x49aac  1      
.L_49ae0:                                        #        0x49aad  0      
  cmpl $0x10, %eax                               #  34    0x49aad  3      
  jne .L_49a80                                   #  35    0x49ab0  6      
  jmpq .L_49ac0                                  #  36    0x49ab6  5      
  nop                                            #  37    0x49abb  1      
  nop                                            #  38    0x49abc  1      
.L_49b00:                                        #        0x49abd  0      
  movl %esi, %edi                                #  39    0x49abd  2      
  addl $0x8, %esp                                #  40    0x49abf  3      
  addq %r15, %rsp                                #  41    0x49ac2  3      
  jmpq ._Unwind_GetRegionStart                   #  42    0x49ac5  5      
  nop                                            #  43    0x49aca  1      
  nop                                            #  44    0x49acb  1      
.L_49b20:                                        #        0x49acc  0      
  movl %esi, %edi                                #  45    0x49acc  2      
  addl $0x8, %esp                                #  46    0x49ace  3      
  addq %r15, %rsp                                #  47    0x49ad1  3      
  jmpq ._Unwind_GetTextRelBase                   #  48    0x49ad4  5      
  nop                                            #  49    0x49ad9  1      
  nop                                            #  50    0x49ada  1      
.L_49b40:                                        #        0x49adb  0      
  movl %esi, %edi                                #  51    0x49adb  2      
  addl $0x8, %esp                                #  52    0x49add  3      
  addq %r15, %rsp                                #  53    0x49ae0  3      
  jmpq ._Unwind_GetDataRelBase                   #  54    0x49ae3  5      
  nop                                            #  55    0x49ae8  1      
  nop                                            #  56    0x49ae9  1      
  nop                                            #  57    0x49aea  1      
  nop                                            #  58    0x49aeb  1      
  nop                                            #  59    0x49aec  1      
  nop                                            #  60    0x49aed  1      
  nop                                            #  61    0x49aee  1      
  nop                                            #  62    0x49aef  1      
  nop                                            #  63    0x49af0  1      
  nop                                            #  64    0x49af1  1      
  nop                                            #  65    0x49af2  1      
  nop                                            #  66    0x49af3  1      
  nop                                            #  67    0x49af4  1      
  nop                                            #  68    0x49af5  1      
  nop                                            #  69    0x49af6  1      
  nop                                            #  70    0x49af7  1      
  nop                                            #  71    0x49af8  1      
  nop                                            #  72    0x49af9  1      
  nop                                            #  73    0x49afa  1      
                                                                          
.size _ZL21base_of_encoded_valuehP15_Unwind_Context, .-_ZL21base_of_encoded_valuehP15_Unwind_Context

