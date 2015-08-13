  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj, @function

#! file-offset 0x116820
#! rip-offset  0xd6820
#! capacity    64 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj:  #        0xd6820  0      OPC=<label>         
  cmpl $0x1, %edx                                 #  1     0xd6820  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi                                 #  2     0xd6823  2      OPC=movl_r32_r32    
  movl %esi, %esi                                 #  3     0xd6825  2      OPC=movl_r32_r32    
  je .L_d6840                                     #  4     0xd6827  2      OPC=je_label        
  jmpq .wmemmove                                  #  5     0xd6829  5      OPC=jmpq_label_1    
  nop                                             #  6     0xd682e  1      OPC=nop             
  nop                                             #  7     0xd682f  1      OPC=nop             
  nop                                             #  8     0xd6830  1      OPC=nop             
  nop                                             #  9     0xd6831  1      OPC=nop             
  nop                                             #  10    0xd6832  1      OPC=nop             
  nop                                             #  11    0xd6833  1      OPC=nop             
  nop                                             #  12    0xd6834  1      OPC=nop             
  nop                                             #  13    0xd6835  1      OPC=nop             
  nop                                             #  14    0xd6836  1      OPC=nop             
  nop                                             #  15    0xd6837  1      OPC=nop             
  nop                                             #  16    0xd6838  1      OPC=nop             
  nop                                             #  17    0xd6839  1      OPC=nop             
  nop                                             #  18    0xd683a  1      OPC=nop             
  nop                                             #  19    0xd683b  1      OPC=nop             
  nop                                             #  20    0xd683c  1      OPC=nop             
  nop                                             #  21    0xd683d  1      OPC=nop             
  nop                                             #  22    0xd683e  1      OPC=nop             
  nop                                             #  23    0xd683f  1      OPC=nop             
.L_d6840:                                         #        0xd6840  0      OPC=<label>         
  popq %r11                                       #  24    0xd6840  2      OPC=popq_r64_1      
  movl %esi, %esi                                 #  25    0xd6842  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  26    0xd6844  4      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  27    0xd6848  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                        #  28    0xd684a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                         #  29    0xd684e  7      OPC=andl_r32_imm32  
  nop                                             #  30    0xd6855  1      OPC=nop             
  nop                                             #  31    0xd6856  1      OPC=nop             
  nop                                             #  32    0xd6857  1      OPC=nop             
  nop                                             #  33    0xd6858  1      OPC=nop             
  addq %r15, %r11                                 #  34    0xd6859  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  35    0xd685c  3      OPC=jmpq_r64        
  nop                                             #  36    0xd685f  1      OPC=nop             
  nop                                             #  37    0xd6860  1      OPC=nop             
  nop                                             #  38    0xd6861  1      OPC=nop             
  nop                                             #  39    0xd6862  1      OPC=nop             
  nop                                             #  40    0xd6863  1      OPC=nop             
  nop                                             #  41    0xd6864  1      OPC=nop             
  nop                                             #  42    0xd6865  1      OPC=nop             
  nop                                             #  43    0xd6866  1      OPC=nop             
                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj

