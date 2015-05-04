  .text
  .globl _ZL21base_of_encoded_valuehP15_Unwind_Context
  .type _ZL21base_of_encoded_valuehP15_Unwind_Context, @function

#! file-offset 0x49ae0
#! rip-offset  0x49ae0
#! capacity    288 bytes

# Text                                           #  Line  RIP      Bytes  
._ZL21base_of_encoded_valuehP15_Unwind_Context:  #        0x49ae0  0      
  subl $0x8, %esp                                #  1     0x49ae0  3      
  addq %r15, %rsp                                #  2     0x49ae3  3      
  cmpb $0xff, %dil                               #  3     0x49ae6  4      
  movl %esi, %esi                                #  4     0x49aea  2      
  je .L_49b60                                    #  5     0x49aec  6      
  movl %edi, %eax                                #  6     0x49af2  2      
  andl $0x70, %eax                               #  7     0x49af4  3      
  cmpl $0x20, %eax                               #  8     0x49af7  3      
  je .L_49bc0                                    #  9     0x49afa  6      
  nop                                            #  10    0x49b00  1      
  jle .L_49b40                                   #  11    0x49b01  6      
  cmpl $0x40, %eax                               #  12    0x49b07  3      
  je .L_49ba0                                    #  13    0x49b0a  6      
  cmpl $0x50, %eax                               #  14    0x49b10  3      
  je .L_49b60                                    #  15    0x49b13  6      
  cmpl $0x30, %eax                               #  16    0x49b19  3      
  je .L_49be0                                    #  17    0x49b1c  6      
  nop                                            #  18    0x49b22  1      
.L_49b20:                                        #        0x49b23  0      
  nop                                            #  19    0x49b23  1      
  nop                                            #  20    0x49b24  1      
  callq .abort                                   #  21    0x49b25  5      
.L_49b40:                                        #        0x49b2a  0      
  testl %eax, %eax                               #  22    0x49b2a  2      
  jne .L_49b80                                   #  23    0x49b2c  6      
  nop                                            #  24    0x49b32  1      
  nop                                            #  25    0x49b33  1      
.L_49b60:                                        #        0x49b34  0      
  addl $0x8, %esp                                #  26    0x49b34  3      
  addq %r15, %rsp                                #  27    0x49b37  3      
  xorl %eax, %eax                                #  28    0x49b3a  2      
  popq %r11                                      #  29    0x49b3c  3      
  andl $0xffffffe0, %r11d                        #  30    0x49b3f  7      
  addq %r15, %r11                                #  31    0x49b46  3      
  jmpq %r11                                      #  32    0x49b49  3      
  nop                                            #  33    0x49b4c  1      
.L_49b80:                                        #        0x49b4d  0      
  cmpl $0x10, %eax                               #  34    0x49b4d  3      
  jne .L_49b20                                   #  35    0x49b50  6      
  jmpq .L_49b60                                  #  36    0x49b56  5      
  nop                                            #  37    0x49b5b  1      
  nop                                            #  38    0x49b5c  1      
.L_49ba0:                                        #        0x49b5d  0      
  movl %esi, %edi                                #  39    0x49b5d  2      
  addl $0x8, %esp                                #  40    0x49b5f  3      
  addq %r15, %rsp                                #  41    0x49b62  3      
  jmpq ._Unwind_GetRegionStart                   #  42    0x49b65  5      
  nop                                            #  43    0x49b6a  1      
  nop                                            #  44    0x49b6b  1      
.L_49bc0:                                        #        0x49b6c  0      
  movl %esi, %edi                                #  45    0x49b6c  2      
  addl $0x8, %esp                                #  46    0x49b6e  3      
  addq %r15, %rsp                                #  47    0x49b71  3      
  jmpq ._Unwind_GetTextRelBase                   #  48    0x49b74  5      
  nop                                            #  49    0x49b79  1      
  nop                                            #  50    0x49b7a  1      
.L_49be0:                                        #        0x49b7b  0      
  movl %esi, %edi                                #  51    0x49b7b  2      
  addl $0x8, %esp                                #  52    0x49b7d  3      
  addq %r15, %rsp                                #  53    0x49b80  3      
  jmpq ._Unwind_GetDataRelBase                   #  54    0x49b83  5      
  nop                                            #  55    0x49b88  1      
  nop                                            #  56    0x49b89  1      
  nop                                            #  57    0x49b8a  1      
  nop                                            #  58    0x49b8b  1      
  nop                                            #  59    0x49b8c  1      
  nop                                            #  60    0x49b8d  1      
  nop                                            #  61    0x49b8e  1      
  nop                                            #  62    0x49b8f  1      
  nop                                            #  63    0x49b90  1      
  nop                                            #  64    0x49b91  1      
  nop                                            #  65    0x49b92  1      
  nop                                            #  66    0x49b93  1      
  nop                                            #  67    0x49b94  1      
  nop                                            #  68    0x49b95  1      
  nop                                            #  69    0x49b96  1      
  nop                                            #  70    0x49b97  1      
  nop                                            #  71    0x49b98  1      
  nop                                            #  72    0x49b99  1      
  nop                                            #  73    0x49b9a  1      
                                                                          
.size _ZL21base_of_encoded_valuehP15_Unwind_Context, .-_ZL21base_of_encoded_valuehP15_Unwind_Context

