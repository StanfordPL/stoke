  .text
  .globl _ZL21base_of_encoded_valuehP15_Unwind_Context
  .type _ZL21base_of_encoded_valuehP15_Unwind_Context, @function

#! file-offset 0x49a60
#! rip-offset  0x49a60
#! capacity    288 bytes

# Text                                           #  Line  RIP      Bytes  
._ZL21base_of_encoded_valuehP15_Unwind_Context:  #        0x49a60  0      
  subl $0x8, %esp                                #  1     0x49a60  3      
  addq %r15, %rsp                                #  2     0x49a63  3      
  cmpb $0xff, %dil                               #  3     0x49a66  4      
  movl %esi, %esi                                #  4     0x49a6a  2      
  je .L_49ae0                                    #  5     0x49a6c  6      
  movl %edi, %eax                                #  6     0x49a72  2      
  andl $0x70, %eax                               #  7     0x49a74  3      
  cmpl $0x20, %eax                               #  8     0x49a77  3      
  je .L_49b40                                    #  9     0x49a7a  6      
  nop                                            #  10    0x49a80  1      
  jle .L_49ac0                                   #  11    0x49a81  6      
  cmpl $0x40, %eax                               #  12    0x49a87  3      
  je .L_49b20                                    #  13    0x49a8a  6      
  cmpl $0x50, %eax                               #  14    0x49a90  3      
  je .L_49ae0                                    #  15    0x49a93  6      
  cmpl $0x30, %eax                               #  16    0x49a99  3      
  je .L_49b60                                    #  17    0x49a9c  6      
  nop                                            #  18    0x49aa2  1      
.L_49aa0:                                        #        0x49aa3  0      
  nop                                            #  19    0x49aa3  1      
  nop                                            #  20    0x49aa4  1      
  callq .abort                                   #  21    0x49aa5  5      
.L_49ac0:                                        #        0x49aaa  0      
  testl %eax, %eax                               #  22    0x49aaa  2      
  jne .L_49b00                                   #  23    0x49aac  6      
  nop                                            #  24    0x49ab2  1      
  nop                                            #  25    0x49ab3  1      
.L_49ae0:                                        #        0x49ab4  0      
  addl $0x8, %esp                                #  26    0x49ab4  3      
  addq %r15, %rsp                                #  27    0x49ab7  3      
  xorl %eax, %eax                                #  28    0x49aba  2      
  popq %r11                                      #  29    0x49abc  3      
  andl $0xffffffe0, %r11d                        #  30    0x49abf  7      
  addq %r15, %r11                                #  31    0x49ac6  3      
  jmpq %r11                                      #  32    0x49ac9  3      
  nop                                            #  33    0x49acc  1      
.L_49b00:                                        #        0x49acd  0      
  cmpl $0x10, %eax                               #  34    0x49acd  3      
  jne .L_49aa0                                   #  35    0x49ad0  6      
  jmpq .L_49ae0                                  #  36    0x49ad6  5      
  nop                                            #  37    0x49adb  1      
  nop                                            #  38    0x49adc  1      
.L_49b20:                                        #        0x49add  0      
  movl %esi, %edi                                #  39    0x49add  2      
  addl $0x8, %esp                                #  40    0x49adf  3      
  addq %r15, %rsp                                #  41    0x49ae2  3      
  jmpq ._Unwind_GetRegionStart                   #  42    0x49ae5  5      
  nop                                            #  43    0x49aea  1      
  nop                                            #  44    0x49aeb  1      
.L_49b40:                                        #        0x49aec  0      
  movl %esi, %edi                                #  45    0x49aec  2      
  addl $0x8, %esp                                #  46    0x49aee  3      
  addq %r15, %rsp                                #  47    0x49af1  3      
  jmpq ._Unwind_GetTextRelBase                   #  48    0x49af4  5      
  nop                                            #  49    0x49af9  1      
  nop                                            #  50    0x49afa  1      
.L_49b60:                                        #        0x49afb  0      
  movl %esi, %edi                                #  51    0x49afb  2      
  addl $0x8, %esp                                #  52    0x49afd  3      
  addq %r15, %rsp                                #  53    0x49b00  3      
  jmpq ._Unwind_GetDataRelBase                   #  54    0x49b03  5      
  nop                                            #  55    0x49b08  1      
  nop                                            #  56    0x49b09  1      
  nop                                            #  57    0x49b0a  1      
  nop                                            #  58    0x49b0b  1      
  nop                                            #  59    0x49b0c  1      
  nop                                            #  60    0x49b0d  1      
  nop                                            #  61    0x49b0e  1      
  nop                                            #  62    0x49b0f  1      
  nop                                            #  63    0x49b10  1      
  nop                                            #  64    0x49b11  1      
  nop                                            #  65    0x49b12  1      
  nop                                            #  66    0x49b13  1      
  nop                                            #  67    0x49b14  1      
  nop                                            #  68    0x49b15  1      
  nop                                            #  69    0x49b16  1      
  nop                                            #  70    0x49b17  1      
  nop                                            #  71    0x49b18  1      
  nop                                            #  72    0x49b19  1      
  nop                                            #  73    0x49b1a  1      
                                                                          
.size _ZL21base_of_encoded_valuehP15_Unwind_Context, .-_ZL21base_of_encoded_valuehP15_Unwind_Context

