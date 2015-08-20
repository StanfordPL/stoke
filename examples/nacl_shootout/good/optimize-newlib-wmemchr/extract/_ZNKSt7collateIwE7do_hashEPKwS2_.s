  .text
  .globl _ZNKSt7collateIwE7do_hashEPKwS2_
  .type _ZNKSt7collateIwE7do_hashEPKwS2_, @function

#! file-offset 0xf2180
#! rip-offset  0xb2180
#! capacity    96 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE7do_hashEPKwS2_:  #        0xb2180  0      OPC=<label>         
  movl %esi, %esi                   #  1     0xb2180  2      OPC=movl_r32_r32    
  movl %edx, %edx                   #  2     0xb2182  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                   #  3     0xb2184  2      OPC=xorl_r32_r32    
  xorl %eax, %eax                   #  4     0xb2186  2      OPC=xorl_r32_r32    
  cmpl %edx, %esi                   #  5     0xb2188  2      OPC=cmpl_r32_r32    
  jae .L_b21c0                      #  6     0xb218a  2      OPC=jae_label       
  nop                               #  7     0xb218c  1      OPC=nop             
  nop                               #  8     0xb218d  1      OPC=nop             
  nop                               #  9     0xb218e  1      OPC=nop             
  nop                               #  10    0xb218f  1      OPC=nop             
  nop                               #  11    0xb2190  1      OPC=nop             
  nop                               #  12    0xb2191  1      OPC=nop             
  nop                               #  13    0xb2192  1      OPC=nop             
  nop                               #  14    0xb2193  1      OPC=nop             
  nop                               #  15    0xb2194  1      OPC=nop             
  nop                               #  16    0xb2195  1      OPC=nop             
  nop                               #  17    0xb2196  1      OPC=nop             
  nop                               #  18    0xb2197  1      OPC=nop             
  nop                               #  19    0xb2198  1      OPC=nop             
  nop                               #  20    0xb2199  1      OPC=nop             
  nop                               #  21    0xb219a  1      OPC=nop             
  nop                               #  22    0xb219b  1      OPC=nop             
  nop                               #  23    0xb219c  1      OPC=nop             
  nop                               #  24    0xb219d  1      OPC=nop             
  nop                               #  25    0xb219e  1      OPC=nop             
  nop                               #  26    0xb219f  1      OPC=nop             
.L_b21a0:                           #        0xb21a0  0      OPC=<label>         
  rorl $0x19, %ecx                  #  27    0xb21a0  3      OPC=rorl_r32_imm8   
  movl %esi, %esi                   #  28    0xb21a3  2      OPC=movl_r32_r32    
  addl (%r15,%rsi,1), %ecx          #  29    0xb21a5  4      OPC=addl_r32_m32    
  addl $0x4, %esi                   #  30    0xb21a9  3      OPC=addl_r32_imm8   
  cmpl %esi, %edx                   #  31    0xb21ac  2      OPC=cmpl_r32_r32    
  ja .L_b21a0                       #  32    0xb21ae  2      OPC=ja_label        
  movl %ecx, %eax                   #  33    0xb21b0  2      OPC=movl_r32_r32    
  nop                               #  34    0xb21b2  1      OPC=nop             
  nop                               #  35    0xb21b3  1      OPC=nop             
  nop                               #  36    0xb21b4  1      OPC=nop             
  nop                               #  37    0xb21b5  1      OPC=nop             
  nop                               #  38    0xb21b6  1      OPC=nop             
  nop                               #  39    0xb21b7  1      OPC=nop             
  nop                               #  40    0xb21b8  1      OPC=nop             
  nop                               #  41    0xb21b9  1      OPC=nop             
  nop                               #  42    0xb21ba  1      OPC=nop             
  nop                               #  43    0xb21bb  1      OPC=nop             
  nop                               #  44    0xb21bc  1      OPC=nop             
  nop                               #  45    0xb21bd  1      OPC=nop             
  nop                               #  46    0xb21be  1      OPC=nop             
  nop                               #  47    0xb21bf  1      OPC=nop             
.L_b21c0:                           #        0xb21c0  0      OPC=<label>         
  popq %r11                         #  48    0xb21c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  49    0xb21c2  7      OPC=andl_r32_imm32  
  nop                               #  50    0xb21c9  1      OPC=nop             
  nop                               #  51    0xb21ca  1      OPC=nop             
  nop                               #  52    0xb21cb  1      OPC=nop             
  nop                               #  53    0xb21cc  1      OPC=nop             
  addq %r15, %r11                   #  54    0xb21cd  3      OPC=addq_r64_r64    
  jmpq %r11                         #  55    0xb21d0  3      OPC=jmpq_r64        
  nop                               #  56    0xb21d3  1      OPC=nop             
  nop                               #  57    0xb21d4  1      OPC=nop             
  nop                               #  58    0xb21d5  1      OPC=nop             
  nop                               #  59    0xb21d6  1      OPC=nop             
  nop                               #  60    0xb21d7  1      OPC=nop             
  nop                               #  61    0xb21d8  1      OPC=nop             
  nop                               #  62    0xb21d9  1      OPC=nop             
  nop                               #  63    0xb21da  1      OPC=nop             
  nop                               #  64    0xb21db  1      OPC=nop             
  nop                               #  65    0xb21dc  1      OPC=nop             
  nop                               #  66    0xb21dd  1      OPC=nop             
  nop                               #  67    0xb21de  1      OPC=nop             
  nop                               #  68    0xb21df  1      OPC=nop             
  nop                               #  69    0xb21e0  1      OPC=nop             
  nop                               #  70    0xb21e1  1      OPC=nop             
  nop                               #  71    0xb21e2  1      OPC=nop             
  nop                               #  72    0xb21e3  1      OPC=nop             
  nop                               #  73    0xb21e4  1      OPC=nop             
  nop                               #  74    0xb21e5  1      OPC=nop             
  nop                               #  75    0xb21e6  1      OPC=nop             
                                                                                 
.size _ZNKSt7collateIwE7do_hashEPKwS2_, .-_ZNKSt7collateIwE7do_hashEPKwS2_

