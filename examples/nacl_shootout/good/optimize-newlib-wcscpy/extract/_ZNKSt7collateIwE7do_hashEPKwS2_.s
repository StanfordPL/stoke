  .text
  .globl _ZNKSt7collateIwE7do_hashEPKwS2_
  .type _ZNKSt7collateIwE7do_hashEPKwS2_, @function

#! file-offset 0xf1e80
#! rip-offset  0xb1e80
#! capacity    96 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE7do_hashEPKwS2_:  #        0xb1e80  0      OPC=<label>         
  movl %esi, %esi                   #  1     0xb1e80  2      OPC=movl_r32_r32    
  movl %edx, %edx                   #  2     0xb1e82  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                   #  3     0xb1e84  2      OPC=xorl_r32_r32    
  xorl %eax, %eax                   #  4     0xb1e86  2      OPC=xorl_r32_r32    
  cmpl %edx, %esi                   #  5     0xb1e88  2      OPC=cmpl_r32_r32    
  jae .L_b1ec0                      #  6     0xb1e8a  2      OPC=jae_label       
  nop                               #  7     0xb1e8c  1      OPC=nop             
  nop                               #  8     0xb1e8d  1      OPC=nop             
  nop                               #  9     0xb1e8e  1      OPC=nop             
  nop                               #  10    0xb1e8f  1      OPC=nop             
  nop                               #  11    0xb1e90  1      OPC=nop             
  nop                               #  12    0xb1e91  1      OPC=nop             
  nop                               #  13    0xb1e92  1      OPC=nop             
  nop                               #  14    0xb1e93  1      OPC=nop             
  nop                               #  15    0xb1e94  1      OPC=nop             
  nop                               #  16    0xb1e95  1      OPC=nop             
  nop                               #  17    0xb1e96  1      OPC=nop             
  nop                               #  18    0xb1e97  1      OPC=nop             
  nop                               #  19    0xb1e98  1      OPC=nop             
  nop                               #  20    0xb1e99  1      OPC=nop             
  nop                               #  21    0xb1e9a  1      OPC=nop             
  nop                               #  22    0xb1e9b  1      OPC=nop             
  nop                               #  23    0xb1e9c  1      OPC=nop             
  nop                               #  24    0xb1e9d  1      OPC=nop             
  nop                               #  25    0xb1e9e  1      OPC=nop             
  nop                               #  26    0xb1e9f  1      OPC=nop             
.L_b1ea0:                           #        0xb1ea0  0      OPC=<label>         
  rorl $0x19, %ecx                  #  27    0xb1ea0  3      OPC=rorl_r32_imm8   
  movl %esi, %esi                   #  28    0xb1ea3  2      OPC=movl_r32_r32    
  addl (%r15,%rsi,1), %ecx          #  29    0xb1ea5  4      OPC=addl_r32_m32    
  addl $0x4, %esi                   #  30    0xb1ea9  3      OPC=addl_r32_imm8   
  cmpl %esi, %edx                   #  31    0xb1eac  2      OPC=cmpl_r32_r32    
  ja .L_b1ea0                       #  32    0xb1eae  2      OPC=ja_label        
  movl %ecx, %eax                   #  33    0xb1eb0  2      OPC=movl_r32_r32    
  nop                               #  34    0xb1eb2  1      OPC=nop             
  nop                               #  35    0xb1eb3  1      OPC=nop             
  nop                               #  36    0xb1eb4  1      OPC=nop             
  nop                               #  37    0xb1eb5  1      OPC=nop             
  nop                               #  38    0xb1eb6  1      OPC=nop             
  nop                               #  39    0xb1eb7  1      OPC=nop             
  nop                               #  40    0xb1eb8  1      OPC=nop             
  nop                               #  41    0xb1eb9  1      OPC=nop             
  nop                               #  42    0xb1eba  1      OPC=nop             
  nop                               #  43    0xb1ebb  1      OPC=nop             
  nop                               #  44    0xb1ebc  1      OPC=nop             
  nop                               #  45    0xb1ebd  1      OPC=nop             
  nop                               #  46    0xb1ebe  1      OPC=nop             
  nop                               #  47    0xb1ebf  1      OPC=nop             
.L_b1ec0:                           #        0xb1ec0  0      OPC=<label>         
  popq %r11                         #  48    0xb1ec0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  49    0xb1ec2  7      OPC=andl_r32_imm32  
  nop                               #  50    0xb1ec9  1      OPC=nop             
  nop                               #  51    0xb1eca  1      OPC=nop             
  nop                               #  52    0xb1ecb  1      OPC=nop             
  nop                               #  53    0xb1ecc  1      OPC=nop             
  addq %r15, %r11                   #  54    0xb1ecd  3      OPC=addq_r64_r64    
  jmpq %r11                         #  55    0xb1ed0  3      OPC=jmpq_r64        
  nop                               #  56    0xb1ed3  1      OPC=nop             
  nop                               #  57    0xb1ed4  1      OPC=nop             
  nop                               #  58    0xb1ed5  1      OPC=nop             
  nop                               #  59    0xb1ed6  1      OPC=nop             
  nop                               #  60    0xb1ed7  1      OPC=nop             
  nop                               #  61    0xb1ed8  1      OPC=nop             
  nop                               #  62    0xb1ed9  1      OPC=nop             
  nop                               #  63    0xb1eda  1      OPC=nop             
  nop                               #  64    0xb1edb  1      OPC=nop             
  nop                               #  65    0xb1edc  1      OPC=nop             
  nop                               #  66    0xb1edd  1      OPC=nop             
  nop                               #  67    0xb1ede  1      OPC=nop             
  nop                               #  68    0xb1edf  1      OPC=nop             
  nop                               #  69    0xb1ee0  1      OPC=nop             
  nop                               #  70    0xb1ee1  1      OPC=nop             
  nop                               #  71    0xb1ee2  1      OPC=nop             
  nop                               #  72    0xb1ee3  1      OPC=nop             
  nop                               #  73    0xb1ee4  1      OPC=nop             
  nop                               #  74    0xb1ee5  1      OPC=nop             
  nop                               #  75    0xb1ee6  1      OPC=nop             
                                                                                 
.size _ZNKSt7collateIwE7do_hashEPKwS2_, .-_ZNKSt7collateIwE7do_hashEPKwS2_

