  .text
  .globl _ZNKSt9type_info10__do_catchEPKS_PPvj
  .type _ZNKSt9type_info10__do_catchEPKS_PPvj, @function

#! file-offset 0x4cb20
#! rip-offset  0x4cb20
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNKSt9type_info10__do_catchEPKS_PPvj:  #        0x4cb20  0      
  movl %edi, %edi                        #  1     0x4cb20  2      
  movl %esi, %esi                        #  2     0x4cb22  2      
  movl %edi, %edi                        #  3     0x4cb24  2      
  movl 0x4(%r15,%rdi,1), %eax            #  4     0x4cb26  5      
  movl %esi, %esi                        #  5     0x4cb2b  2      
  cmpl 0x4(%r15,%rsi,1), %eax            #  6     0x4cb2d  5      
  popq %r11                              #  7     0x4cb32  3      
  sete %al                               #  8     0x4cb35  3      
  nop                                    #  9     0x4cb38  1      
  andl $0xffffffe0, %r11d                #  10    0x4cb39  7      
  addq %r15, %r11                        #  11    0x4cb40  3      
  jmpq %r11                              #  12    0x4cb43  3      
  nop                                    #  13    0x4cb46  1      
  nop                                    #  14    0x4cb47  1      
  nop                                    #  15    0x4cb48  1      
  nop                                    #  16    0x4cb49  1      
  nop                                    #  17    0x4cb4a  1      
  nop                                    #  18    0x4cb4b  1      
  nop                                    #  19    0x4cb4c  1      
  nop                                    #  20    0x4cb4d  1      
  nop                                    #  21    0x4cb4e  1      
  nop                                    #  22    0x4cb4f  1      
  nop                                    #  23    0x4cb50  1      
  nop                                    #  24    0x4cb51  1      
  nop                                    #  25    0x4cb52  1      
  nop                                    #  26    0x4cb53  1      
  nop                                    #  27    0x4cb54  1      
  nop                                    #  28    0x4cb55  1      
  nop                                    #  29    0x4cb56  1      
  nop                                    #  30    0x4cb57  1      
  nop                                    #  31    0x4cb58  1      
  nop                                    #  32    0x4cb59  1      
  nop                                    #  33    0x4cb5a  1      
  nop                                    #  34    0x4cb5b  1      
                                                                  
.size _ZNKSt9type_info10__do_catchEPKS_PPvj, .-_ZNKSt9type_info10__do_catchEPKS_PPvj

