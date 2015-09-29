  .text
  .globl _ZNKSt7collateIcE7do_hashEPKcS2_
  .type _ZNKSt7collateIcE7do_hashEPKcS2_, @function

#! file-offset 0xb9900
#! rip-offset  0x79900
#! capacity    96 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE7do_hashEPKcS2_:  #        0x79900  0      OPC=<label>         
  movl %esi, %esi                   #  1     0x79900  2      OPC=movl_r32_r32    
  movl %edx, %edx                   #  2     0x79902  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                   #  3     0x79904  2      OPC=xorl_r32_r32    
  xorl %eax, %eax                   #  4     0x79906  2      OPC=xorl_r32_r32    
  cmpl %edx, %esi                   #  5     0x79908  2      OPC=cmpl_r32_r32    
  jae .L_79940                      #  6     0x7990a  2      OPC=jae_label       
  nop                               #  7     0x7990c  1      OPC=nop             
  nop                               #  8     0x7990d  1      OPC=nop             
  nop                               #  9     0x7990e  1      OPC=nop             
  nop                               #  10    0x7990f  1      OPC=nop             
  nop                               #  11    0x79910  1      OPC=nop             
  nop                               #  12    0x79911  1      OPC=nop             
  nop                               #  13    0x79912  1      OPC=nop             
  nop                               #  14    0x79913  1      OPC=nop             
  nop                               #  15    0x79914  1      OPC=nop             
  nop                               #  16    0x79915  1      OPC=nop             
  nop                               #  17    0x79916  1      OPC=nop             
  nop                               #  18    0x79917  1      OPC=nop             
  nop                               #  19    0x79918  1      OPC=nop             
  nop                               #  20    0x79919  1      OPC=nop             
  nop                               #  21    0x7991a  1      OPC=nop             
  nop                               #  22    0x7991b  1      OPC=nop             
  nop                               #  23    0x7991c  1      OPC=nop             
  nop                               #  24    0x7991d  1      OPC=nop             
  nop                               #  25    0x7991e  1      OPC=nop             
  nop                               #  26    0x7991f  1      OPC=nop             
.L_79920:                           #        0x79920  0      OPC=<label>         
  movl %esi, %esi                   #  27    0x79920  2      OPC=movl_r32_r32    
  movsbl (%r15,%rsi,1), %eax        #  28    0x79922  5      OPC=movsbl_r32_m8   
  rorl $0x19, %ecx                  #  29    0x79927  3      OPC=rorl_r32_imm8   
  addl $0x1, %esi                   #  30    0x7992a  3      OPC=addl_r32_imm8   
  addl %eax, %ecx                   #  31    0x7992d  2      OPC=addl_r32_r32    
  cmpl %esi, %edx                   #  32    0x7992f  2      OPC=cmpl_r32_r32    
  ja .L_79920                       #  33    0x79931  2      OPC=ja_label        
  movl %ecx, %eax                   #  34    0x79933  2      OPC=movl_r32_r32    
  nop                               #  35    0x79935  1      OPC=nop             
  nop                               #  36    0x79936  1      OPC=nop             
  nop                               #  37    0x79937  1      OPC=nop             
  nop                               #  38    0x79938  1      OPC=nop             
  nop                               #  39    0x79939  1      OPC=nop             
  nop                               #  40    0x7993a  1      OPC=nop             
  nop                               #  41    0x7993b  1      OPC=nop             
  nop                               #  42    0x7993c  1      OPC=nop             
  nop                               #  43    0x7993d  1      OPC=nop             
  nop                               #  44    0x7993e  1      OPC=nop             
  nop                               #  45    0x7993f  1      OPC=nop             
.L_79940:                           #        0x79940  0      OPC=<label>         
  popq %r11                         #  46    0x79940  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  47    0x79942  7      OPC=andl_r32_imm32  
  nop                               #  48    0x79949  1      OPC=nop             
  nop                               #  49    0x7994a  1      OPC=nop             
  nop                               #  50    0x7994b  1      OPC=nop             
  nop                               #  51    0x7994c  1      OPC=nop             
  addq %r15, %r11                   #  52    0x7994d  3      OPC=addq_r64_r64    
  jmpq %r11                         #  53    0x79950  3      OPC=jmpq_r64        
  nop                               #  54    0x79953  1      OPC=nop             
  nop                               #  55    0x79954  1      OPC=nop             
  nop                               #  56    0x79955  1      OPC=nop             
  nop                               #  57    0x79956  1      OPC=nop             
  nop                               #  58    0x79957  1      OPC=nop             
  nop                               #  59    0x79958  1      OPC=nop             
  nop                               #  60    0x79959  1      OPC=nop             
  nop                               #  61    0x7995a  1      OPC=nop             
  nop                               #  62    0x7995b  1      OPC=nop             
  nop                               #  63    0x7995c  1      OPC=nop             
  nop                               #  64    0x7995d  1      OPC=nop             
  nop                               #  65    0x7995e  1      OPC=nop             
  nop                               #  66    0x7995f  1      OPC=nop             
  nop                               #  67    0x79960  1      OPC=nop             
  nop                               #  68    0x79961  1      OPC=nop             
  nop                               #  69    0x79962  1      OPC=nop             
  nop                               #  70    0x79963  1      OPC=nop             
  nop                               #  71    0x79964  1      OPC=nop             
  nop                               #  72    0x79965  1      OPC=nop             
  nop                               #  73    0x79966  1      OPC=nop             
                                                                                 
.size _ZNKSt7collateIcE7do_hashEPKcS2_, .-_ZNKSt7collateIcE7do_hashEPKcS2_

