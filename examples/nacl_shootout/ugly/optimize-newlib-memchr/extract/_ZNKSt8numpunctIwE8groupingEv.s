  .text
  .globl _ZNKSt8numpunctIwE8groupingEv
  .type _ZNKSt8numpunctIwE8groupingEv, @function

#! file-offset 0xf1000
#! rip-offset  0xb1000
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE8groupingEv:  #        0xb1000  0      OPC=<label>         
  movl %esi, %esi                #  1     0xb1000  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0xb1002  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0xb1003  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0xb1005  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0xb1007  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0xb100b  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0xb100d  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  8     0xb100f  5      OPC=movl_r32_m32    
  nop                            #  9     0xb1014  1      OPC=nop             
  nop                            #  10    0xb1015  1      OPC=nop             
  nop                            #  11    0xb1016  1      OPC=nop             
  nop                            #  12    0xb1017  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0xb1018  6      OPC=andl_r32_imm32  
  nop                            #  14    0xb101e  1      OPC=nop             
  nop                            #  15    0xb101f  1      OPC=nop             
  nop                            #  16    0xb1020  1      OPC=nop             
  addq %r15, %rax                #  17    0xb1021  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0xb1024  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0xb1026  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0xb1028  1      OPC=popq_r64_1      
  popq %r11                      #  21    0xb1029  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0xb102b  7      OPC=andl_r32_imm32  
  nop                            #  23    0xb1032  1      OPC=nop             
  nop                            #  24    0xb1033  1      OPC=nop             
  nop                            #  25    0xb1034  1      OPC=nop             
  nop                            #  26    0xb1035  1      OPC=nop             
  addq %r15, %r11                #  27    0xb1036  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0xb1039  3      OPC=jmpq_r64        
  nop                            #  29    0xb103c  1      OPC=nop             
  nop                            #  30    0xb103d  1      OPC=nop             
  nop                            #  31    0xb103e  1      OPC=nop             
  nop                            #  32    0xb103f  1      OPC=nop             
  nop                            #  33    0xb1040  1      OPC=nop             
  nop                            #  34    0xb1041  1      OPC=nop             
  nop                            #  35    0xb1042  1      OPC=nop             
  nop                            #  36    0xb1043  1      OPC=nop             
  nop                            #  37    0xb1044  1      OPC=nop             
  nop                            #  38    0xb1045  1      OPC=nop             
  nop                            #  39    0xb1046  1      OPC=nop             
  nop                            #  40    0xb1047  1      OPC=nop             
  nop                            #  41    0xb1048  1      OPC=nop             
  nop                            #  42    0xb1049  1      OPC=nop             
  nop                            #  43    0xb104a  1      OPC=nop             
  nop                            #  44    0xb104b  1      OPC=nop             
  nop                            #  45    0xb104c  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIwE8groupingEv, .-_ZNKSt8numpunctIwE8groupingEv

