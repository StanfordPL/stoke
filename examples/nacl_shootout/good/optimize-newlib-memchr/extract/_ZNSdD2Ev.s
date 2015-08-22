  .text
  .globl _ZNSdD2Ev
  .type _ZNSdD2Ev, @function

#! file-offset 0x13bca0
#! rip-offset  0xfbca0
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSdD2Ev:                     #        0xfbca0  0      OPC=<label>         
  movl %esi, %esi               #  1     0xfbca0  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0xfbca2  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  3     0xfbca4  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  4     0xfbca6  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  5     0xfbcaa  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rsi,1), %edx  #  6     0xfbcac  5      OPC=movl_r32_m32    
  subl $0xc, %eax               #  7     0xfbcb1  3      OPC=subl_r32_imm8   
  movl %eax, %eax               #  8     0xfbcb4  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax      #  9     0xfbcb6  4      OPC=movl_r32_m32    
  addl %edi, %eax               #  10    0xfbcba  2      OPC=addl_r32_r32    
  nop                           #  11    0xfbcbc  1      OPC=nop             
  nop                           #  12    0xfbcbd  1      OPC=nop             
  nop                           #  13    0xfbcbe  1      OPC=nop             
  nop                           #  14    0xfbcbf  1      OPC=nop             
  movl %eax, %eax               #  15    0xfbcc0  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)      #  16    0xfbcc2  4      OPC=movl_m32_r32    
  movl %esi, %esi               #  17    0xfbcc6  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rsi,1), %eax  #  18    0xfbcc8  5      OPC=movl_r32_m32    
  leal 0x8(%rdi), %edx          #  19    0xfbccd  3      OPC=leal_r32_m16    
  movl %edi, %edi               #  20    0xfbcd0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)   #  21    0xfbcd2  5      OPC=movl_m32_r32    
  leal 0xc(%rsi), %eax          #  22    0xfbcd7  3      OPC=leal_r32_m16    
  addl $0x4, %esi               #  23    0xfbcda  3      OPC=addl_r32_imm8   
  nop                           #  24    0xfbcdd  1      OPC=nop             
  nop                           #  25    0xfbcde  1      OPC=nop             
  nop                           #  26    0xfbcdf  1      OPC=nop             
  movl %eax, %eax               #  27    0xfbce0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx      #  28    0xfbce2  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  29    0xfbce6  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax   #  30    0xfbce8  5      OPC=movl_r32_m32    
  movl %edx, %edx               #  31    0xfbced  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)      #  32    0xfbcef  4      OPC=movl_m32_r32    
  subl $0xc, %ecx               #  33    0xfbcf3  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx               #  34    0xfbcf6  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx      #  35    0xfbcf8  4      OPC=addl_r32_m32    
  nop                           #  36    0xfbcfc  1      OPC=nop             
  nop                           #  37    0xfbcfd  1      OPC=nop             
  nop                           #  38    0xfbcfe  1      OPC=nop             
  nop                           #  39    0xfbcff  1      OPC=nop             
  movl %edx, %edx               #  40    0xfbd00  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)      #  41    0xfbd02  4      OPC=movl_m32_r32    
  movl %esi, %esi               #  42    0xfbd06  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  43    0xfbd08  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  44    0xfbd0c  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx   #  45    0xfbd0e  5      OPC=movl_r32_m32    
  movl %edi, %edi               #  46    0xfbd13  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)      #  47    0xfbd15  4      OPC=movl_m32_r32    
  subl $0xc, %eax               #  48    0xfbd19  3      OPC=subl_r32_imm8   
  nop                           #  49    0xfbd1c  1      OPC=nop             
  nop                           #  50    0xfbd1d  1      OPC=nop             
  nop                           #  51    0xfbd1e  1      OPC=nop             
  nop                           #  52    0xfbd1f  1      OPC=nop             
  movl %eax, %eax               #  53    0xfbd20  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax      #  54    0xfbd22  4      OPC=movl_r32_m32    
  movl %edi, %edi               #  55    0xfbd26  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)   #  56    0xfbd28  9      OPC=movl_m32_imm32  
  addl %edi, %eax               #  57    0xfbd31  2      OPC=addl_r32_r32    
  movl %eax, %eax               #  58    0xfbd33  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)      #  59    0xfbd35  4      OPC=movl_m32_r32    
  popq %r11                     #  60    0xfbd39  2      OPC=popq_r64_1      
  nop                           #  61    0xfbd3b  1      OPC=nop             
  nop                           #  62    0xfbd3c  1      OPC=nop             
  nop                           #  63    0xfbd3d  1      OPC=nop             
  nop                           #  64    0xfbd3e  1      OPC=nop             
  nop                           #  65    0xfbd3f  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  66    0xfbd40  7      OPC=andl_r32_imm32  
  nop                           #  67    0xfbd47  1      OPC=nop             
  nop                           #  68    0xfbd48  1      OPC=nop             
  nop                           #  69    0xfbd49  1      OPC=nop             
  nop                           #  70    0xfbd4a  1      OPC=nop             
  addq %r15, %r11               #  71    0xfbd4b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  72    0xfbd4e  3      OPC=jmpq_r64        
  nop                           #  73    0xfbd51  1      OPC=nop             
  nop                           #  74    0xfbd52  1      OPC=nop             
  nop                           #  75    0xfbd53  1      OPC=nop             
  nop                           #  76    0xfbd54  1      OPC=nop             
  nop                           #  77    0xfbd55  1      OPC=nop             
  nop                           #  78    0xfbd56  1      OPC=nop             
  nop                           #  79    0xfbd57  1      OPC=nop             
  nop                           #  80    0xfbd58  1      OPC=nop             
  nop                           #  81    0xfbd59  1      OPC=nop             
  nop                           #  82    0xfbd5a  1      OPC=nop             
  nop                           #  83    0xfbd5b  1      OPC=nop             
  nop                           #  84    0xfbd5c  1      OPC=nop             
  nop                           #  85    0xfbd5d  1      OPC=nop             
  nop                           #  86    0xfbd5e  1      OPC=nop             
  nop                           #  87    0xfbd5f  1      OPC=nop             
  nop                           #  88    0xfbd60  1      OPC=nop             
  nop                           #  89    0xfbd61  1      OPC=nop             
  nop                           #  90    0xfbd62  1      OPC=nop             
  nop                           #  91    0xfbd63  1      OPC=nop             
  nop                           #  92    0xfbd64  1      OPC=nop             
  nop                           #  93    0xfbd65  1      OPC=nop             
  nop                           #  94    0xfbd66  1      OPC=nop             
                                                                             
.size _ZNSdD2Ev, .-_ZNSdD2Ev

