  .text
  .globl _ZNKSt8numpunctIwE8truenameEv
  .type _ZNKSt8numpunctIwE8truenameEv, @function

#! file-offset 0xf1040
#! rip-offset  0xb1040
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE8truenameEv:  #        0xb1040  0      OPC=<label>         
  movl %esi, %esi                #  1     0xb1040  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0xb1042  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0xb1043  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0xb1045  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0xb1047  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0xb104b  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0xb104d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax   #  8     0xb104f  5      OPC=movl_r32_m32    
  nop                            #  9     0xb1054  1      OPC=nop             
  nop                            #  10    0xb1055  1      OPC=nop             
  nop                            #  11    0xb1056  1      OPC=nop             
  nop                            #  12    0xb1057  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0xb1058  6      OPC=andl_r32_imm32  
  nop                            #  14    0xb105e  1      OPC=nop             
  nop                            #  15    0xb105f  1      OPC=nop             
  nop                            #  16    0xb1060  1      OPC=nop             
  addq %r15, %rax                #  17    0xb1061  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0xb1064  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0xb1066  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0xb1068  1      OPC=popq_r64_1      
  popq %r11                      #  21    0xb1069  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0xb106b  7      OPC=andl_r32_imm32  
  nop                            #  23    0xb1072  1      OPC=nop             
  nop                            #  24    0xb1073  1      OPC=nop             
  nop                            #  25    0xb1074  1      OPC=nop             
  nop                            #  26    0xb1075  1      OPC=nop             
  addq %r15, %r11                #  27    0xb1076  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0xb1079  3      OPC=jmpq_r64        
  nop                            #  29    0xb107c  1      OPC=nop             
  nop                            #  30    0xb107d  1      OPC=nop             
  nop                            #  31    0xb107e  1      OPC=nop             
  nop                            #  32    0xb107f  1      OPC=nop             
  nop                            #  33    0xb1080  1      OPC=nop             
  nop                            #  34    0xb1081  1      OPC=nop             
  nop                            #  35    0xb1082  1      OPC=nop             
  nop                            #  36    0xb1083  1      OPC=nop             
  nop                            #  37    0xb1084  1      OPC=nop             
  nop                            #  38    0xb1085  1      OPC=nop             
  nop                            #  39    0xb1086  1      OPC=nop             
  nop                            #  40    0xb1087  1      OPC=nop             
  nop                            #  41    0xb1088  1      OPC=nop             
  nop                            #  42    0xb1089  1      OPC=nop             
  nop                            #  43    0xb108a  1      OPC=nop             
  nop                            #  44    0xb108b  1      OPC=nop             
  nop                            #  45    0xb108c  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIwE8truenameEv, .-_ZNKSt8numpunctIwE8truenameEv

