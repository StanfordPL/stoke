  .text
  .globl _ZNKSt9type_info10__do_catchEPKS_PPvj
  .type _ZNKSt9type_info10__do_catchEPKS_PPvj, @function

#! file-offset 0x4caa0
#! rip-offset  0x4caa0
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNKSt9type_info10__do_catchEPKS_PPvj:  #        0x4caa0  0      
  movl %edi, %edi                        #  1     0x4caa0  2      
  movl %esi, %esi                        #  2     0x4caa2  2      
  movl %edi, %edi                        #  3     0x4caa4  2      
  movl 0x4(%r15,%rdi,1), %eax            #  4     0x4caa6  5      
  movl %esi, %esi                        #  5     0x4caab  2      
  cmpl 0x4(%r15,%rsi,1), %eax            #  6     0x4caad  5      
  popq %r11                              #  7     0x4cab2  3      
  sete %al                               #  8     0x4cab5  3      
  nop                                    #  9     0x4cab8  1      
  andl $0xffffffe0, %r11d                #  10    0x4cab9  7      
  addq %r15, %r11                        #  11    0x4cac0  3      
  jmpq %r11                              #  12    0x4cac3  3      
  nop                                    #  13    0x4cac6  1      
  nop                                    #  14    0x4cac7  1      
  nop                                    #  15    0x4cac8  1      
  nop                                    #  16    0x4cac9  1      
  nop                                    #  17    0x4caca  1      
  nop                                    #  18    0x4cacb  1      
  nop                                    #  19    0x4cacc  1      
  nop                                    #  20    0x4cacd  1      
  nop                                    #  21    0x4cace  1      
  nop                                    #  22    0x4cacf  1      
  nop                                    #  23    0x4cad0  1      
  nop                                    #  24    0x4cad1  1      
  nop                                    #  25    0x4cad2  1      
  nop                                    #  26    0x4cad3  1      
  nop                                    #  27    0x4cad4  1      
  nop                                    #  28    0x4cad5  1      
  nop                                    #  29    0x4cad6  1      
  nop                                    #  30    0x4cad7  1      
  nop                                    #  31    0x4cad8  1      
  nop                                    #  32    0x4cad9  1      
  nop                                    #  33    0x4cada  1      
  nop                                    #  34    0x4cadb  1      
                                                                  
.size _ZNKSt9type_info10__do_catchEPKS_PPvj, .-_ZNKSt9type_info10__do_catchEPKS_PPvj

