  .text
  .globl __sfmoreglue
  .type __sfmoreglue, @function

#! file-offset 0x15b160
#! rip-offset  0x11b160
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.__sfmoreglue:                  #        0x11b160  0      OPC=<label>         
  pushq %r12                    #  1     0x11b160  2      OPC=pushq_r64_1     
  movl %esi, %r12d              #  2     0x11b162  3      OPC=movl_r32_r32    
  shll $0x7, %esi               #  3     0x11b165  3      OPC=shll_r32_imm8   
  addl $0x10, %esi              #  4     0x11b168  3      OPC=addl_r32_imm8   
  movl %edi, %edi               #  5     0x11b16b  2      OPC=movl_r32_r32    
  pushq %rbx                    #  6     0x11b16d  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  7     0x11b16e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  8     0x11b171  3      OPC=addq_r64_r64    
  nop                           #  9     0x11b174  1      OPC=nop             
  nop                           #  10    0x11b175  1      OPC=nop             
  nop                           #  11    0x11b176  1      OPC=nop             
  nop                           #  12    0x11b177  1      OPC=nop             
  nop                           #  13    0x11b178  1      OPC=nop             
  nop                           #  14    0x11b179  1      OPC=nop             
  nop                           #  15    0x11b17a  1      OPC=nop             
  callq ._malloc_r              #  16    0x11b17b  5      OPC=callq_label     
  movl %eax, %ebx               #  17    0x11b180  2      OPC=movl_r32_r32    
  xorl %eax, %eax               #  18    0x11b182  2      OPC=xorl_r32_r32    
  testq %rbx, %rbx              #  19    0x11b184  3      OPC=testq_r64_r64   
  je .L_11b1e0                  #  20    0x11b187  2      OPC=je_label        
  leal 0x10(%rbx), %edi         #  21    0x11b189  3      OPC=leal_r32_m16    
  movl %r12d, %edx              #  22    0x11b18c  3      OPC=movl_r32_r32    
  movl %ebx, %ebx               #  23    0x11b18f  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)      #  24    0x11b191  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx               #  25    0x11b199  2      OPC=movl_r32_r32    
  movl %r12d, 0x4(%r15,%rbx,1)  #  26    0x11b19b  5      OPC=movl_m32_r32    
  shll $0x7, %edx               #  27    0x11b1a0  3      OPC=shll_r32_imm8   
  xorl %esi, %esi               #  28    0x11b1a3  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx               #  29    0x11b1a5  2      OPC=movl_r32_r32    
  movl %edi, 0x8(%r15,%rbx,1)   #  30    0x11b1a7  5      OPC=movl_m32_r32    
  nop                           #  31    0x11b1ac  1      OPC=nop             
  nop                           #  32    0x11b1ad  1      OPC=nop             
  nop                           #  33    0x11b1ae  1      OPC=nop             
  nop                           #  34    0x11b1af  1      OPC=nop             
  nop                           #  35    0x11b1b0  1      OPC=nop             
  nop                           #  36    0x11b1b1  1      OPC=nop             
  nop                           #  37    0x11b1b2  1      OPC=nop             
  nop                           #  38    0x11b1b3  1      OPC=nop             
  nop                           #  39    0x11b1b4  1      OPC=nop             
  nop                           #  40    0x11b1b5  1      OPC=nop             
  nop                           #  41    0x11b1b6  1      OPC=nop             
  nop                           #  42    0x11b1b7  1      OPC=nop             
  nop                           #  43    0x11b1b8  1      OPC=nop             
  nop                           #  44    0x11b1b9  1      OPC=nop             
  nop                           #  45    0x11b1ba  1      OPC=nop             
  callq .memset                 #  46    0x11b1bb  5      OPC=callq_label     
  movq %rbx, %rax               #  47    0x11b1c0  3      OPC=movq_r64_r64    
  nop                           #  48    0x11b1c3  1      OPC=nop             
  nop                           #  49    0x11b1c4  1      OPC=nop             
  nop                           #  50    0x11b1c5  1      OPC=nop             
  nop                           #  51    0x11b1c6  1      OPC=nop             
  nop                           #  52    0x11b1c7  1      OPC=nop             
  nop                           #  53    0x11b1c8  1      OPC=nop             
  nop                           #  54    0x11b1c9  1      OPC=nop             
  nop                           #  55    0x11b1ca  1      OPC=nop             
  nop                           #  56    0x11b1cb  1      OPC=nop             
  nop                           #  57    0x11b1cc  1      OPC=nop             
  nop                           #  58    0x11b1cd  1      OPC=nop             
  nop                           #  59    0x11b1ce  1      OPC=nop             
  nop                           #  60    0x11b1cf  1      OPC=nop             
  nop                           #  61    0x11b1d0  1      OPC=nop             
  nop                           #  62    0x11b1d1  1      OPC=nop             
  nop                           #  63    0x11b1d2  1      OPC=nop             
  nop                           #  64    0x11b1d3  1      OPC=nop             
  nop                           #  65    0x11b1d4  1      OPC=nop             
  nop                           #  66    0x11b1d5  1      OPC=nop             
  nop                           #  67    0x11b1d6  1      OPC=nop             
  nop                           #  68    0x11b1d7  1      OPC=nop             
  nop                           #  69    0x11b1d8  1      OPC=nop             
  nop                           #  70    0x11b1d9  1      OPC=nop             
  nop                           #  71    0x11b1da  1      OPC=nop             
  nop                           #  72    0x11b1db  1      OPC=nop             
  nop                           #  73    0x11b1dc  1      OPC=nop             
  nop                           #  74    0x11b1dd  1      OPC=nop             
  nop                           #  75    0x11b1de  1      OPC=nop             
  nop                           #  76    0x11b1df  1      OPC=nop             
.L_11b1e0:                      #        0x11b1e0  0      OPC=<label>         
  addl $0x8, %esp               #  77    0x11b1e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  78    0x11b1e3  3      OPC=addq_r64_r64    
  popq %rbx                     #  79    0x11b1e6  1      OPC=popq_r64_1      
  popq %r12                     #  80    0x11b1e7  2      OPC=popq_r64_1      
  popq %r11                     #  81    0x11b1e9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  82    0x11b1eb  7      OPC=andl_r32_imm32  
  nop                           #  83    0x11b1f2  1      OPC=nop             
  nop                           #  84    0x11b1f3  1      OPC=nop             
  nop                           #  85    0x11b1f4  1      OPC=nop             
  nop                           #  86    0x11b1f5  1      OPC=nop             
  addq %r15, %r11               #  87    0x11b1f6  3      OPC=addq_r64_r64    
  jmpq %r11                     #  88    0x11b1f9  3      OPC=jmpq_r64        
  nop                           #  89    0x11b1fc  1      OPC=nop             
  nop                           #  90    0x11b1fd  1      OPC=nop             
  nop                           #  91    0x11b1fe  1      OPC=nop             
  nop                           #  92    0x11b1ff  1      OPC=nop             
  nop                           #  93    0x11b200  1      OPC=nop             
  nop                           #  94    0x11b201  1      OPC=nop             
  nop                           #  95    0x11b202  1      OPC=nop             
  nop                           #  96    0x11b203  1      OPC=nop             
  nop                           #  97    0x11b204  1      OPC=nop             
  nop                           #  98    0x11b205  1      OPC=nop             
  nop                           #  99    0x11b206  1      OPC=nop             
                                                                              
.size __sfmoreglue, .-__sfmoreglue

