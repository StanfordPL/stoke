  .text
  .globl _Unwind_GetLanguageSpecificData
  .type _Unwind_GetLanguageSpecificData, @function

#! file-offset 0x58f40
#! rip-offset  0x58f40
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._Unwind_GetLanguageSpecificData:  #        0x58f40  0      
  popq %r11                        #  1     0x58f40  3      
  movl %edi, %edi                  #  2     0x58f43  2      
  movl %edi, %edi                  #  3     0x58f45  2      
  movl 0x50(%r15,%rdi,1), %eax     #  4     0x58f47  5      
  andl $0xffffffe0, %r11d          #  5     0x58f4c  7      
  addq %r15, %r11                  #  6     0x58f53  3      
  jmpq %r11                        #  7     0x58f56  3      
  nop                              #  8     0x58f59  1      
                                                            
.size _Unwind_GetLanguageSpecificData, .-_Unwind_GetLanguageSpecificData

