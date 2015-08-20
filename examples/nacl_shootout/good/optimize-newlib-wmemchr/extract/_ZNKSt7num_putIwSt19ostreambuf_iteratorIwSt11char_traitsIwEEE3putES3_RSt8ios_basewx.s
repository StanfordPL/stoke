  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewx
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewx, @function

#! file-offset 0xf1000
#! rip-offset  0xb1000
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewx:  #        0xb1000  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb1000  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb1002  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb1005  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb1008  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb100a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb100c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb1010  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                         #  8     0xb1012  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb1017  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb1018  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb101e  1      OPC=nop             
  nop                                                                                  #  12    0xb101f  1      OPC=nop             
  nop                                                                                  #  13    0xb1020  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb1021  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb1024  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb1026  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb1029  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb102c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb102e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb1035  1      OPC=nop             
  nop                                                                                  #  21    0xb1036  1      OPC=nop             
  nop                                                                                  #  22    0xb1037  1      OPC=nop             
  nop                                                                                  #  23    0xb1038  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb1039  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb103c  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb103f  1      OPC=nop             
  nop                                                                                  #  27    0xb1040  1      OPC=nop             
  nop                                                                                  #  28    0xb1041  1      OPC=nop             
  nop                                                                                  #  29    0xb1042  1      OPC=nop             
  nop                                                                                  #  30    0xb1043  1      OPC=nop             
  nop                                                                                  #  31    0xb1044  1      OPC=nop             
  nop                                                                                  #  32    0xb1045  1      OPC=nop             
  nop                                                                                  #  33    0xb1046  1      OPC=nop             
  nop                                                                                  #  34    0xb1047  1      OPC=nop             
  nop                                                                                  #  35    0xb1048  1      OPC=nop             
  nop                                                                                  #  36    0xb1049  1      OPC=nop             
  nop                                                                                  #  37    0xb104a  1      OPC=nop             
  nop                                                                                  #  38    0xb104b  1      OPC=nop             
  nop                                                                                  #  39    0xb104c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewx, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewx

