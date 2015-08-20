  .text
  .globl _ZNSdD2Ev
  .type _ZNSdD2Ev, @function

#! file-offset 0x13b580
#! rip-offset  0xfb580
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSdD2Ev:                     #        0xfb580  0      OPC=<label>         
  movl %esi, %esi               #  1     0xfb580  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0xfb582  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  3     0xfb584  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  4     0xfb586  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  5     0xfb58a  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rsi,1), %edx  #  6     0xfb58c  5      OPC=movl_r32_m32    
  subl $0xc, %eax               #  7     0xfb591  3      OPC=subl_r32_imm8   
  movl %eax, %eax               #  8     0xfb594  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax      #  9     0xfb596  4      OPC=movl_r32_m32    
  addl %edi, %eax               #  10    0xfb59a  2      OPC=addl_r32_r32    
  nop                           #  11    0xfb59c  1      OPC=nop             
  nop                           #  12    0xfb59d  1      OPC=nop             
  nop                           #  13    0xfb59e  1      OPC=nop             
  nop                           #  14    0xfb59f  1      OPC=nop             
  movl %eax, %eax               #  15    0xfb5a0  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)      #  16    0xfb5a2  4      OPC=movl_m32_r32    
  movl %esi, %esi               #  17    0xfb5a6  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rsi,1), %eax  #  18    0xfb5a8  5      OPC=movl_r32_m32    
  leal 0x8(%rdi), %edx          #  19    0xfb5ad  3      OPC=leal_r32_m16    
  movl %edi, %edi               #  20    0xfb5b0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)   #  21    0xfb5b2  5      OPC=movl_m32_r32    
  leal 0xc(%rsi), %eax          #  22    0xfb5b7  3      OPC=leal_r32_m16    
  addl $0x4, %esi               #  23    0xfb5ba  3      OPC=addl_r32_imm8   
  nop                           #  24    0xfb5bd  1      OPC=nop             
  nop                           #  25    0xfb5be  1      OPC=nop             
  nop                           #  26    0xfb5bf  1      OPC=nop             
  movl %eax, %eax               #  27    0xfb5c0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx      #  28    0xfb5c2  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  29    0xfb5c6  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax   #  30    0xfb5c8  5      OPC=movl_r32_m32    
  movl %edx, %edx               #  31    0xfb5cd  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)      #  32    0xfb5cf  4      OPC=movl_m32_r32    
  subl $0xc, %ecx               #  33    0xfb5d3  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx               #  34    0xfb5d6  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx      #  35    0xfb5d8  4      OPC=addl_r32_m32    
  nop                           #  36    0xfb5dc  1      OPC=nop             
  nop                           #  37    0xfb5dd  1      OPC=nop             
  nop                           #  38    0xfb5de  1      OPC=nop             
  nop                           #  39    0xfb5df  1      OPC=nop             
  movl %edx, %edx               #  40    0xfb5e0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)      #  41    0xfb5e2  4      OPC=movl_m32_r32    
  movl %esi, %esi               #  42    0xfb5e6  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  43    0xfb5e8  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  44    0xfb5ec  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx   #  45    0xfb5ee  5      OPC=movl_r32_m32    
  movl %edi, %edi               #  46    0xfb5f3  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)      #  47    0xfb5f5  4      OPC=movl_m32_r32    
  subl $0xc, %eax               #  48    0xfb5f9  3      OPC=subl_r32_imm8   
  nop                           #  49    0xfb5fc  1      OPC=nop             
  nop                           #  50    0xfb5fd  1      OPC=nop             
  nop                           #  51    0xfb5fe  1      OPC=nop             
  nop                           #  52    0xfb5ff  1      OPC=nop             
  movl %eax, %eax               #  53    0xfb600  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax      #  54    0xfb602  4      OPC=movl_r32_m32    
  movl %edi, %edi               #  55    0xfb606  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)   #  56    0xfb608  9      OPC=movl_m32_imm32  
  addl %edi, %eax               #  57    0xfb611  2      OPC=addl_r32_r32    
  movl %eax, %eax               #  58    0xfb613  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)      #  59    0xfb615  4      OPC=movl_m32_r32    
  popq %r11                     #  60    0xfb619  2      OPC=popq_r64_1      
  nop                           #  61    0xfb61b  1      OPC=nop             
  nop                           #  62    0xfb61c  1      OPC=nop             
  nop                           #  63    0xfb61d  1      OPC=nop             
  nop                           #  64    0xfb61e  1      OPC=nop             
  nop                           #  65    0xfb61f  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  66    0xfb620  7      OPC=andl_r32_imm32  
  nop                           #  67    0xfb627  1      OPC=nop             
  nop                           #  68    0xfb628  1      OPC=nop             
  nop                           #  69    0xfb629  1      OPC=nop             
  nop                           #  70    0xfb62a  1      OPC=nop             
  addq %r15, %r11               #  71    0xfb62b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  72    0xfb62e  3      OPC=jmpq_r64        
  nop                           #  73    0xfb631  1      OPC=nop             
  nop                           #  74    0xfb632  1      OPC=nop             
  nop                           #  75    0xfb633  1      OPC=nop             
  nop                           #  76    0xfb634  1      OPC=nop             
  nop                           #  77    0xfb635  1      OPC=nop             
  nop                           #  78    0xfb636  1      OPC=nop             
  nop                           #  79    0xfb637  1      OPC=nop             
  nop                           #  80    0xfb638  1      OPC=nop             
  nop                           #  81    0xfb639  1      OPC=nop             
  nop                           #  82    0xfb63a  1      OPC=nop             
  nop                           #  83    0xfb63b  1      OPC=nop             
  nop                           #  84    0xfb63c  1      OPC=nop             
  nop                           #  85    0xfb63d  1      OPC=nop             
  nop                           #  86    0xfb63e  1      OPC=nop             
  nop                           #  87    0xfb63f  1      OPC=nop             
  nop                           #  88    0xfb640  1      OPC=nop             
  nop                           #  89    0xfb641  1      OPC=nop             
  nop                           #  90    0xfb642  1      OPC=nop             
  nop                           #  91    0xfb643  1      OPC=nop             
  nop                           #  92    0xfb644  1      OPC=nop             
  nop                           #  93    0xfb645  1      OPC=nop             
  nop                           #  94    0xfb646  1      OPC=nop             
                                                                             
.size _ZNSdD2Ev, .-_ZNSdD2Ev

