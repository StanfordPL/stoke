  .text
  .globl _ZNKSt9type_info10__do_catchEPKS_PPvj
  .type _ZNKSt9type_info10__do_catchEPKS_PPvj, @function

#! file-offset 0x4ca80
#! rip-offset  0x4ca80
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNKSt9type_info10__do_catchEPKS_PPvj:  #        0x4ca80  0      
  movl %edi, %edi                        #  1     0x4ca80  2      
  movl %esi, %esi                        #  2     0x4ca82  2      
  movl %edi, %edi                        #  3     0x4ca84  2      
  movl 0x4(%r15,%rdi,1), %eax            #  4     0x4ca86  5      
  movl %esi, %esi                        #  5     0x4ca8b  2      
  cmpl 0x4(%r15,%rsi,1), %eax            #  6     0x4ca8d  5      
  popq %r11                              #  7     0x4ca92  3      
  sete %al                               #  8     0x4ca95  3      
  nop                                    #  9     0x4ca98  1      
  andl $0xffffffe0, %r11d                #  10    0x4ca99  7      
  addq %r15, %r11                        #  11    0x4caa0  3      
  jmpq %r11                              #  12    0x4caa3  3      
  nop                                    #  13    0x4caa6  1      
  nop                                    #  14    0x4caa7  1      
  nop                                    #  15    0x4caa8  1      
  nop                                    #  16    0x4caa9  1      
  nop                                    #  17    0x4caaa  1      
  nop                                    #  18    0x4caab  1      
  nop                                    #  19    0x4caac  1      
  nop                                    #  20    0x4caad  1      
  nop                                    #  21    0x4caae  1      
  nop                                    #  22    0x4caaf  1      
  nop                                    #  23    0x4cab0  1      
  nop                                    #  24    0x4cab1  1      
  nop                                    #  25    0x4cab2  1      
  nop                                    #  26    0x4cab3  1      
  nop                                    #  27    0x4cab4  1      
  nop                                    #  28    0x4cab5  1      
  nop                                    #  29    0x4cab6  1      
  nop                                    #  30    0x4cab7  1      
  nop                                    #  31    0x4cab8  1      
  nop                                    #  32    0x4cab9  1      
  nop                                    #  33    0x4caba  1      
  nop                                    #  34    0x4cabb  1      
                                                                  
.size _ZNKSt9type_info10__do_catchEPKS_PPvj, .-_ZNKSt9type_info10__do_catchEPKS_PPvj

