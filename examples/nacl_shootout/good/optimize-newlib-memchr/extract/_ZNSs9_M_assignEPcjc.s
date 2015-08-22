  .text
  .globl _ZNSs9_M_assignEPcjc
  .type _ZNSs9_M_assignEPcjc, @function

#! file-offset 0xeb940
#! rip-offset  0xab940
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNSs9_M_assignEPcjc:     #        0xab940  0      OPC=<label>         
  cmpl $0x1, %esi          #  1     0xab940  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi          #  2     0xab943  2      OPC=movl_r32_r32    
  je .L_ab960              #  3     0xab945  2      OPC=je_label        
  movsbl %dl, %eax         #  4     0xab947  3      OPC=movsbl_r32_r8   
  movl %esi, %edx          #  5     0xab94a  2      OPC=movl_r32_r32    
  movl %eax, %esi          #  6     0xab94c  2      OPC=movl_r32_r32    
  jmpq .memset             #  7     0xab94e  5      OPC=jmpq_label_1    
  nop                      #  8     0xab953  1      OPC=nop             
  nop                      #  9     0xab954  1      OPC=nop             
  nop                      #  10    0xab955  1      OPC=nop             
  nop                      #  11    0xab956  1      OPC=nop             
  nop                      #  12    0xab957  1      OPC=nop             
  nop                      #  13    0xab958  1      OPC=nop             
  nop                      #  14    0xab959  1      OPC=nop             
  nop                      #  15    0xab95a  1      OPC=nop             
  nop                      #  16    0xab95b  1      OPC=nop             
  nop                      #  17    0xab95c  1      OPC=nop             
  nop                      #  18    0xab95d  1      OPC=nop             
  nop                      #  19    0xab95e  1      OPC=nop             
  nop                      #  20    0xab95f  1      OPC=nop             
.L_ab960:                  #        0xab960  0      OPC=<label>         
  popq %r11                #  21    0xab960  2      OPC=popq_r64_1      
  movl %edi, %edi          #  22    0xab962  2      OPC=movl_r32_r32    
  movb %dl, (%r15,%rdi,1)  #  23    0xab964  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d  #  24    0xab968  7      OPC=andl_r32_imm32  
  nop                      #  25    0xab96f  1      OPC=nop             
  nop                      #  26    0xab970  1      OPC=nop             
  nop                      #  27    0xab971  1      OPC=nop             
  nop                      #  28    0xab972  1      OPC=nop             
  addq %r15, %r11          #  29    0xab973  3      OPC=addq_r64_r64    
  jmpq %r11                #  30    0xab976  3      OPC=jmpq_r64        
  nop                      #  31    0xab979  1      OPC=nop             
  nop                      #  32    0xab97a  1      OPC=nop             
  nop                      #  33    0xab97b  1      OPC=nop             
  nop                      #  34    0xab97c  1      OPC=nop             
  nop                      #  35    0xab97d  1      OPC=nop             
  nop                      #  36    0xab97e  1      OPC=nop             
  nop                      #  37    0xab97f  1      OPC=nop             
  nop                      #  38    0xab980  1      OPC=nop             
  nop                      #  39    0xab981  1      OPC=nop             
  nop                      #  40    0xab982  1      OPC=nop             
  nop                      #  41    0xab983  1      OPC=nop             
  nop                      #  42    0xab984  1      OPC=nop             
  nop                      #  43    0xab985  1      OPC=nop             
  nop                      #  44    0xab986  1      OPC=nop             
                                                                        
.size _ZNSs9_M_assignEPcjc, .-_ZNSs9_M_assignEPcjc

