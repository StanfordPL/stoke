  .text
  .globl _ZNSdD2Ev
  .type _ZNSdD2Ev, @function

#! file-offset 0x13b280
#! rip-offset  0xfb280
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSdD2Ev:                     #        0xfb280  0      OPC=<label>         
  movl %esi, %esi               #  1     0xfb280  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0xfb282  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  3     0xfb284  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  4     0xfb286  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  5     0xfb28a  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rsi,1), %edx  #  6     0xfb28c  5      OPC=movl_r32_m32    
  subl $0xc, %eax               #  7     0xfb291  3      OPC=subl_r32_imm8   
  movl %eax, %eax               #  8     0xfb294  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax      #  9     0xfb296  4      OPC=movl_r32_m32    
  addl %edi, %eax               #  10    0xfb29a  2      OPC=addl_r32_r32    
  nop                           #  11    0xfb29c  1      OPC=nop             
  nop                           #  12    0xfb29d  1      OPC=nop             
  nop                           #  13    0xfb29e  1      OPC=nop             
  nop                           #  14    0xfb29f  1      OPC=nop             
  movl %eax, %eax               #  15    0xfb2a0  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)      #  16    0xfb2a2  4      OPC=movl_m32_r32    
  movl %esi, %esi               #  17    0xfb2a6  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rsi,1), %eax  #  18    0xfb2a8  5      OPC=movl_r32_m32    
  leal 0x8(%rdi), %edx          #  19    0xfb2ad  3      OPC=leal_r32_m16    
  movl %edi, %edi               #  20    0xfb2b0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)   #  21    0xfb2b2  5      OPC=movl_m32_r32    
  leal 0xc(%rsi), %eax          #  22    0xfb2b7  3      OPC=leal_r32_m16    
  addl $0x4, %esi               #  23    0xfb2ba  3      OPC=addl_r32_imm8   
  nop                           #  24    0xfb2bd  1      OPC=nop             
  nop                           #  25    0xfb2be  1      OPC=nop             
  nop                           #  26    0xfb2bf  1      OPC=nop             
  movl %eax, %eax               #  27    0xfb2c0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx      #  28    0xfb2c2  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  29    0xfb2c6  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax   #  30    0xfb2c8  5      OPC=movl_r32_m32    
  movl %edx, %edx               #  31    0xfb2cd  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)      #  32    0xfb2cf  4      OPC=movl_m32_r32    
  subl $0xc, %ecx               #  33    0xfb2d3  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx               #  34    0xfb2d6  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx      #  35    0xfb2d8  4      OPC=addl_r32_m32    
  nop                           #  36    0xfb2dc  1      OPC=nop             
  nop                           #  37    0xfb2dd  1      OPC=nop             
  nop                           #  38    0xfb2de  1      OPC=nop             
  nop                           #  39    0xfb2df  1      OPC=nop             
  movl %edx, %edx               #  40    0xfb2e0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)      #  41    0xfb2e2  4      OPC=movl_m32_r32    
  movl %esi, %esi               #  42    0xfb2e6  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  43    0xfb2e8  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  44    0xfb2ec  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx   #  45    0xfb2ee  5      OPC=movl_r32_m32    
  movl %edi, %edi               #  46    0xfb2f3  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)      #  47    0xfb2f5  4      OPC=movl_m32_r32    
  subl $0xc, %eax               #  48    0xfb2f9  3      OPC=subl_r32_imm8   
  nop                           #  49    0xfb2fc  1      OPC=nop             
  nop                           #  50    0xfb2fd  1      OPC=nop             
  nop                           #  51    0xfb2fe  1      OPC=nop             
  nop                           #  52    0xfb2ff  1      OPC=nop             
  movl %eax, %eax               #  53    0xfb300  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax      #  54    0xfb302  4      OPC=movl_r32_m32    
  movl %edi, %edi               #  55    0xfb306  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)   #  56    0xfb308  9      OPC=movl_m32_imm32  
  addl %edi, %eax               #  57    0xfb311  2      OPC=addl_r32_r32    
  movl %eax, %eax               #  58    0xfb313  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)      #  59    0xfb315  4      OPC=movl_m32_r32    
  popq %r11                     #  60    0xfb319  2      OPC=popq_r64_1      
  nop                           #  61    0xfb31b  1      OPC=nop             
  nop                           #  62    0xfb31c  1      OPC=nop             
  nop                           #  63    0xfb31d  1      OPC=nop             
  nop                           #  64    0xfb31e  1      OPC=nop             
  nop                           #  65    0xfb31f  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  66    0xfb320  7      OPC=andl_r32_imm32  
  nop                           #  67    0xfb327  1      OPC=nop             
  nop                           #  68    0xfb328  1      OPC=nop             
  nop                           #  69    0xfb329  1      OPC=nop             
  nop                           #  70    0xfb32a  1      OPC=nop             
  addq %r15, %r11               #  71    0xfb32b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  72    0xfb32e  3      OPC=jmpq_r64        
  nop                           #  73    0xfb331  1      OPC=nop             
  nop                           #  74    0xfb332  1      OPC=nop             
  nop                           #  75    0xfb333  1      OPC=nop             
  nop                           #  76    0xfb334  1      OPC=nop             
  nop                           #  77    0xfb335  1      OPC=nop             
  nop                           #  78    0xfb336  1      OPC=nop             
  nop                           #  79    0xfb337  1      OPC=nop             
  nop                           #  80    0xfb338  1      OPC=nop             
  nop                           #  81    0xfb339  1      OPC=nop             
  nop                           #  82    0xfb33a  1      OPC=nop             
  nop                           #  83    0xfb33b  1      OPC=nop             
  nop                           #  84    0xfb33c  1      OPC=nop             
  nop                           #  85    0xfb33d  1      OPC=nop             
  nop                           #  86    0xfb33e  1      OPC=nop             
  nop                           #  87    0xfb33f  1      OPC=nop             
  nop                           #  88    0xfb340  1      OPC=nop             
  nop                           #  89    0xfb341  1      OPC=nop             
  nop                           #  90    0xfb342  1      OPC=nop             
  nop                           #  91    0xfb343  1      OPC=nop             
  nop                           #  92    0xfb344  1      OPC=nop             
  nop                           #  93    0xfb345  1      OPC=nop             
  nop                           #  94    0xfb346  1      OPC=nop             
                                                                             
.size _ZNSdD2Ev, .-_ZNSdD2Ev

