  .text
  .globl _ZNKSt7collateIcE7do_hashEPKcS2_
  .type _ZNKSt7collateIcE7do_hashEPKcS2_, @function

#! file-offset 0xb8ee0
#! rip-offset  0x78ee0
#! capacity    96 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE7do_hashEPKcS2_:  #        0x78ee0  0      OPC=<label>         
  movl %esi, %esi                   #  1     0x78ee0  2      OPC=movl_r32_r32    
  movl %edx, %edx                   #  2     0x78ee2  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                   #  3     0x78ee4  2      OPC=xorl_r32_r32    
  xorl %eax, %eax                   #  4     0x78ee6  2      OPC=xorl_r32_r32    
  cmpl %edx, %esi                   #  5     0x78ee8  2      OPC=cmpl_r32_r32    
  jae .L_78f20                      #  6     0x78eea  2      OPC=jae_label       
  nop                               #  7     0x78eec  1      OPC=nop             
  nop                               #  8     0x78eed  1      OPC=nop             
  nop                               #  9     0x78eee  1      OPC=nop             
  nop                               #  10    0x78eef  1      OPC=nop             
  nop                               #  11    0x78ef0  1      OPC=nop             
  nop                               #  12    0x78ef1  1      OPC=nop             
  nop                               #  13    0x78ef2  1      OPC=nop             
  nop                               #  14    0x78ef3  1      OPC=nop             
  nop                               #  15    0x78ef4  1      OPC=nop             
  nop                               #  16    0x78ef5  1      OPC=nop             
  nop                               #  17    0x78ef6  1      OPC=nop             
  nop                               #  18    0x78ef7  1      OPC=nop             
  nop                               #  19    0x78ef8  1      OPC=nop             
  nop                               #  20    0x78ef9  1      OPC=nop             
  nop                               #  21    0x78efa  1      OPC=nop             
  nop                               #  22    0x78efb  1      OPC=nop             
  nop                               #  23    0x78efc  1      OPC=nop             
  nop                               #  24    0x78efd  1      OPC=nop             
  nop                               #  25    0x78efe  1      OPC=nop             
  nop                               #  26    0x78eff  1      OPC=nop             
.L_78f00:                           #        0x78f00  0      OPC=<label>         
  movl %esi, %esi                   #  27    0x78f00  2      OPC=movl_r32_r32    
  movsbl (%r15,%rsi,1), %eax        #  28    0x78f02  5      OPC=movsbl_r32_m8   
  rorl $0x19, %ecx                  #  29    0x78f07  3      OPC=rorl_r32_imm8   
  addl $0x1, %esi                   #  30    0x78f0a  3      OPC=addl_r32_imm8   
  addl %eax, %ecx                   #  31    0x78f0d  2      OPC=addl_r32_r32    
  cmpl %esi, %edx                   #  32    0x78f0f  2      OPC=cmpl_r32_r32    
  ja .L_78f00                       #  33    0x78f11  2      OPC=ja_label        
  movl %ecx, %eax                   #  34    0x78f13  2      OPC=movl_r32_r32    
  nop                               #  35    0x78f15  1      OPC=nop             
  nop                               #  36    0x78f16  1      OPC=nop             
  nop                               #  37    0x78f17  1      OPC=nop             
  nop                               #  38    0x78f18  1      OPC=nop             
  nop                               #  39    0x78f19  1      OPC=nop             
  nop                               #  40    0x78f1a  1      OPC=nop             
  nop                               #  41    0x78f1b  1      OPC=nop             
  nop                               #  42    0x78f1c  1      OPC=nop             
  nop                               #  43    0x78f1d  1      OPC=nop             
  nop                               #  44    0x78f1e  1      OPC=nop             
  nop                               #  45    0x78f1f  1      OPC=nop             
.L_78f20:                           #        0x78f20  0      OPC=<label>         
  popq %r11                         #  46    0x78f20  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  47    0x78f22  7      OPC=andl_r32_imm32  
  nop                               #  48    0x78f29  1      OPC=nop             
  nop                               #  49    0x78f2a  1      OPC=nop             
  nop                               #  50    0x78f2b  1      OPC=nop             
  nop                               #  51    0x78f2c  1      OPC=nop             
  addq %r15, %r11                   #  52    0x78f2d  3      OPC=addq_r64_r64    
  jmpq %r11                         #  53    0x78f30  3      OPC=jmpq_r64        
  nop                               #  54    0x78f33  1      OPC=nop             
  nop                               #  55    0x78f34  1      OPC=nop             
  nop                               #  56    0x78f35  1      OPC=nop             
  nop                               #  57    0x78f36  1      OPC=nop             
  nop                               #  58    0x78f37  1      OPC=nop             
  nop                               #  59    0x78f38  1      OPC=nop             
  nop                               #  60    0x78f39  1      OPC=nop             
  nop                               #  61    0x78f3a  1      OPC=nop             
  nop                               #  62    0x78f3b  1      OPC=nop             
  nop                               #  63    0x78f3c  1      OPC=nop             
  nop                               #  64    0x78f3d  1      OPC=nop             
  nop                               #  65    0x78f3e  1      OPC=nop             
  nop                               #  66    0x78f3f  1      OPC=nop             
  nop                               #  67    0x78f40  1      OPC=nop             
  nop                               #  68    0x78f41  1      OPC=nop             
  nop                               #  69    0x78f42  1      OPC=nop             
  nop                               #  70    0x78f43  1      OPC=nop             
  nop                               #  71    0x78f44  1      OPC=nop             
  nop                               #  72    0x78f45  1      OPC=nop             
  nop                               #  73    0x78f46  1      OPC=nop             
                                                                                 
.size _ZNKSt7collateIcE7do_hashEPKcS2_, .-_ZNKSt7collateIcE7do_hashEPKcS2_

