  .text
  .globl _ZNKSt7collateIwE7do_hashEPKwS2_
  .type _ZNKSt7collateIwE7do_hashEPKwS2_, @function

#! file-offset 0xf28a0
#! rip-offset  0xb28a0
#! capacity    96 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE7do_hashEPKwS2_:  #        0xb28a0  0      OPC=<label>         
  movl %esi, %esi                   #  1     0xb28a0  2      OPC=movl_r32_r32    
  movl %edx, %edx                   #  2     0xb28a2  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                   #  3     0xb28a4  2      OPC=xorl_r32_r32    
  xorl %eax, %eax                   #  4     0xb28a6  2      OPC=xorl_r32_r32    
  cmpl %edx, %esi                   #  5     0xb28a8  2      OPC=cmpl_r32_r32    
  jae .L_b28e0                      #  6     0xb28aa  2      OPC=jae_label       
  nop                               #  7     0xb28ac  1      OPC=nop             
  nop                               #  8     0xb28ad  1      OPC=nop             
  nop                               #  9     0xb28ae  1      OPC=nop             
  nop                               #  10    0xb28af  1      OPC=nop             
  nop                               #  11    0xb28b0  1      OPC=nop             
  nop                               #  12    0xb28b1  1      OPC=nop             
  nop                               #  13    0xb28b2  1      OPC=nop             
  nop                               #  14    0xb28b3  1      OPC=nop             
  nop                               #  15    0xb28b4  1      OPC=nop             
  nop                               #  16    0xb28b5  1      OPC=nop             
  nop                               #  17    0xb28b6  1      OPC=nop             
  nop                               #  18    0xb28b7  1      OPC=nop             
  nop                               #  19    0xb28b8  1      OPC=nop             
  nop                               #  20    0xb28b9  1      OPC=nop             
  nop                               #  21    0xb28ba  1      OPC=nop             
  nop                               #  22    0xb28bb  1      OPC=nop             
  nop                               #  23    0xb28bc  1      OPC=nop             
  nop                               #  24    0xb28bd  1      OPC=nop             
  nop                               #  25    0xb28be  1      OPC=nop             
  nop                               #  26    0xb28bf  1      OPC=nop             
.L_b28c0:                           #        0xb28c0  0      OPC=<label>         
  rorl $0x19, %ecx                  #  27    0xb28c0  3      OPC=rorl_r32_imm8   
  movl %esi, %esi                   #  28    0xb28c3  2      OPC=movl_r32_r32    
  addl (%r15,%rsi,1), %ecx          #  29    0xb28c5  4      OPC=addl_r32_m32    
  addl $0x4, %esi                   #  30    0xb28c9  3      OPC=addl_r32_imm8   
  cmpl %esi, %edx                   #  31    0xb28cc  2      OPC=cmpl_r32_r32    
  ja .L_b28c0                       #  32    0xb28ce  2      OPC=ja_label        
  movl %ecx, %eax                   #  33    0xb28d0  2      OPC=movl_r32_r32    
  nop                               #  34    0xb28d2  1      OPC=nop             
  nop                               #  35    0xb28d3  1      OPC=nop             
  nop                               #  36    0xb28d4  1      OPC=nop             
  nop                               #  37    0xb28d5  1      OPC=nop             
  nop                               #  38    0xb28d6  1      OPC=nop             
  nop                               #  39    0xb28d7  1      OPC=nop             
  nop                               #  40    0xb28d8  1      OPC=nop             
  nop                               #  41    0xb28d9  1      OPC=nop             
  nop                               #  42    0xb28da  1      OPC=nop             
  nop                               #  43    0xb28db  1      OPC=nop             
  nop                               #  44    0xb28dc  1      OPC=nop             
  nop                               #  45    0xb28dd  1      OPC=nop             
  nop                               #  46    0xb28de  1      OPC=nop             
  nop                               #  47    0xb28df  1      OPC=nop             
.L_b28e0:                           #        0xb28e0  0      OPC=<label>         
  popq %r11                         #  48    0xb28e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  49    0xb28e2  7      OPC=andl_r32_imm32  
  nop                               #  50    0xb28e9  1      OPC=nop             
  nop                               #  51    0xb28ea  1      OPC=nop             
  nop                               #  52    0xb28eb  1      OPC=nop             
  nop                               #  53    0xb28ec  1      OPC=nop             
  addq %r15, %r11                   #  54    0xb28ed  3      OPC=addq_r64_r64    
  jmpq %r11                         #  55    0xb28f0  3      OPC=jmpq_r64        
  nop                               #  56    0xb28f3  1      OPC=nop             
  nop                               #  57    0xb28f4  1      OPC=nop             
  nop                               #  58    0xb28f5  1      OPC=nop             
  nop                               #  59    0xb28f6  1      OPC=nop             
  nop                               #  60    0xb28f7  1      OPC=nop             
  nop                               #  61    0xb28f8  1      OPC=nop             
  nop                               #  62    0xb28f9  1      OPC=nop             
  nop                               #  63    0xb28fa  1      OPC=nop             
  nop                               #  64    0xb28fb  1      OPC=nop             
  nop                               #  65    0xb28fc  1      OPC=nop             
  nop                               #  66    0xb28fd  1      OPC=nop             
  nop                               #  67    0xb28fe  1      OPC=nop             
  nop                               #  68    0xb28ff  1      OPC=nop             
  nop                               #  69    0xb2900  1      OPC=nop             
  nop                               #  70    0xb2901  1      OPC=nop             
  nop                               #  71    0xb2902  1      OPC=nop             
  nop                               #  72    0xb2903  1      OPC=nop             
  nop                               #  73    0xb2904  1      OPC=nop             
  nop                               #  74    0xb2905  1      OPC=nop             
  nop                               #  75    0xb2906  1      OPC=nop             
                                                                                 
.size _ZNKSt7collateIwE7do_hashEPKwS2_, .-_ZNKSt7collateIwE7do_hashEPKwS2_

