  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv, @function

#! file-offset 0x119a20
#! rip-offset  0xd9a20
#! capacity    64 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv:              #        0xd9a20  0      OPC=0     
  movl %edi, %edi                                        #  1     0xd9a20  2      OPC=1157  
  movl %edi, %edi                                        #  2     0xd9a22  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                               #  3     0xd9a24  4      OPC=1156  
  subl $0xc, %eax                                        #  4     0xd9a28  3      OPC=2384  
  movl %eax, %eax                                        #  5     0xd9a2b  2      OPC=1157  
  movl 0x8(%r15,%rax,1), %eax                            #  6     0xd9a2d  5      OPC=1156  
  testl %eax, %eax                                       #  7     0xd9a32  2      OPC=2436  
  js .L_d9a40                                            #  8     0xd9a34  6      OPC=1043  
  nop                                                    #  9     0xd9a3a  1      OPC=1343  
  nop                                                    #  10    0xd9a3b  1      OPC=1343  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  11    0xd9a3c  5      OPC=930   
  nop                                                    #  12    0xd9a41  1      OPC=1343  
  nop                                                    #  13    0xd9a42  1      OPC=1343  
  nop                                                    #  14    0xd9a43  1      OPC=1343  
  nop                                                    #  15    0xd9a44  1      OPC=1343  
  nop                                                    #  16    0xd9a45  1      OPC=1343  
.L_d9a40:                                                #        0xd9a46  0      OPC=0     
  popq %r11                                              #  17    0xd9a46  2      OPC=1694  
  andl $0xffffffe0, %r11d                                #  18    0xd9a48  7      OPC=131   
  nop                                                    #  19    0xd9a4f  1      OPC=1343  
  nop                                                    #  20    0xd9a50  1      OPC=1343  
  nop                                                    #  21    0xd9a51  1      OPC=1343  
  nop                                                    #  22    0xd9a52  1      OPC=1343  
  addq %r15, %r11                                        #  23    0xd9a53  3      OPC=72    
  jmpq %r11                                              #  24    0xd9a56  3      OPC=928   
  nop                                                    #  25    0xd9a59  1      OPC=1343  
  nop                                                    #  26    0xd9a5a  1      OPC=1343  
  nop                                                    #  27    0xd9a5b  1      OPC=1343  
  nop                                                    #  28    0xd9a5c  1      OPC=1343  
  nop                                                    #  29    0xd9a5d  1      OPC=1343  
  nop                                                    #  30    0xd9a5e  1      OPC=1343  
  nop                                                    #  31    0xd9a5f  1      OPC=1343  
  nop                                                    #  32    0xd9a60  1      OPC=1343  
  nop                                                    #  33    0xd9a61  1      OPC=1343  
  nop                                                    #  34    0xd9a62  1      OPC=1343  
  nop                                                    #  35    0xd9a63  1      OPC=1343  
  nop                                                    #  36    0xd9a64  1      OPC=1343  
  nop                                                    #  37    0xd9a65  1      OPC=1343  
  nop                                                    #  38    0xd9a66  1      OPC=1343  
  nop                                                    #  39    0xd9a67  1      OPC=1343  
  nop                                                    #  40    0xd9a68  1      OPC=1343  
  nop                                                    #  41    0xd9a69  1      OPC=1343  
  nop                                                    #  42    0xd9a6a  1      OPC=1343  
  nop                                                    #  43    0xd9a6b  1      OPC=1343  
  nop                                                    #  44    0xd9a6c  1      OPC=1343  
                                                                                            
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv

