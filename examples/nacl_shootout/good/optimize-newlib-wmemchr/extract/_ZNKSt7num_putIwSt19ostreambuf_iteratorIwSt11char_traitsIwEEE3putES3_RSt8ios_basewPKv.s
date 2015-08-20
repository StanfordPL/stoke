  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv, @function

#! file-offset 0xf1100
#! rip-offset  0xb1100
#! capacity    64 bytes

# Text                                                                                   #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv:  #        0xb1100  0      OPC=<label>         
  movl %edi, %edi                                                                        #  1     0xb1100  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                        #  2     0xb1102  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                        #  3     0xb1105  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                        #  4     0xb1108  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                        #  5     0xb110a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                               #  6     0xb110c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                        #  7     0xb1110  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                                                           #  8     0xb1112  5      OPC=movl_r32_m32    
  nop                                                                                    #  9     0xb1117  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                 #  10    0xb1118  6      OPC=andl_r32_imm32  
  nop                                                                                    #  11    0xb111e  1      OPC=nop             
  nop                                                                                    #  12    0xb111f  1      OPC=nop             
  nop                                                                                    #  13    0xb1120  1      OPC=nop             
  addq %r15, %rax                                                                        #  14    0xb1121  3      OPC=addq_r64_r64    
  callq %rax                                                                             #  15    0xb1124  2      OPC=callq_r64       
  addl $0x8, %esp                                                                        #  16    0xb1126  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                        #  17    0xb1129  3      OPC=addq_r64_r64    
  popq %r11                                                                              #  18    0xb112c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                #  19    0xb112e  7      OPC=andl_r32_imm32  
  nop                                                                                    #  20    0xb1135  1      OPC=nop             
  nop                                                                                    #  21    0xb1136  1      OPC=nop             
  nop                                                                                    #  22    0xb1137  1      OPC=nop             
  nop                                                                                    #  23    0xb1138  1      OPC=nop             
  addq %r15, %r11                                                                        #  24    0xb1139  3      OPC=addq_r64_r64    
  jmpq %r11                                                                              #  25    0xb113c  3      OPC=jmpq_r64        
  nop                                                                                    #  26    0xb113f  1      OPC=nop             
  nop                                                                                    #  27    0xb1140  1      OPC=nop             
  nop                                                                                    #  28    0xb1141  1      OPC=nop             
  nop                                                                                    #  29    0xb1142  1      OPC=nop             
  nop                                                                                    #  30    0xb1143  1      OPC=nop             
  nop                                                                                    #  31    0xb1144  1      OPC=nop             
  nop                                                                                    #  32    0xb1145  1      OPC=nop             
  nop                                                                                    #  33    0xb1146  1      OPC=nop             
  nop                                                                                    #  34    0xb1147  1      OPC=nop             
  nop                                                                                    #  35    0xb1148  1      OPC=nop             
  nop                                                                                    #  36    0xb1149  1      OPC=nop             
  nop                                                                                    #  37    0xb114a  1      OPC=nop             
  nop                                                                                    #  38    0xb114b  1      OPC=nop             
  nop                                                                                    #  39    0xb114c  1      OPC=nop             
                                                                                                                                      
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv

