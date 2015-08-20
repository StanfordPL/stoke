  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewy
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewy, @function

#! file-offset 0xf1040
#! rip-offset  0xb1040
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewy:  #        0xb1040  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb1040  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb1042  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb1045  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb1048  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb104a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb104c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb1050  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                                                         #  8     0xb1052  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb1057  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb1058  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb105e  1      OPC=nop             
  nop                                                                                  #  12    0xb105f  1      OPC=nop             
  nop                                                                                  #  13    0xb1060  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb1061  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb1064  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb1066  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb1069  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb106c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb106e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb1075  1      OPC=nop             
  nop                                                                                  #  21    0xb1076  1      OPC=nop             
  nop                                                                                  #  22    0xb1077  1      OPC=nop             
  nop                                                                                  #  23    0xb1078  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb1079  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb107c  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb107f  1      OPC=nop             
  nop                                                                                  #  27    0xb1080  1      OPC=nop             
  nop                                                                                  #  28    0xb1081  1      OPC=nop             
  nop                                                                                  #  29    0xb1082  1      OPC=nop             
  nop                                                                                  #  30    0xb1083  1      OPC=nop             
  nop                                                                                  #  31    0xb1084  1      OPC=nop             
  nop                                                                                  #  32    0xb1085  1      OPC=nop             
  nop                                                                                  #  33    0xb1086  1      OPC=nop             
  nop                                                                                  #  34    0xb1087  1      OPC=nop             
  nop                                                                                  #  35    0xb1088  1      OPC=nop             
  nop                                                                                  #  36    0xb1089  1      OPC=nop             
  nop                                                                                  #  37    0xb108a  1      OPC=nop             
  nop                                                                                  #  38    0xb108b  1      OPC=nop             
  nop                                                                                  #  39    0xb108c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewy, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewy

