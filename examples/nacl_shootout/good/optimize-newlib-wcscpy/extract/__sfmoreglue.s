  .text
  .globl __sfmoreglue
  .type __sfmoreglue, @function

#! file-offset 0x15a740
#! rip-offset  0x11a740
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.__sfmoreglue:                  #        0x11a740  0      OPC=<label>         
  pushq %r12                    #  1     0x11a740  2      OPC=pushq_r64_1     
  movl %esi, %r12d              #  2     0x11a742  3      OPC=movl_r32_r32    
  shll $0x7, %esi               #  3     0x11a745  3      OPC=shll_r32_imm8   
  addl $0x10, %esi              #  4     0x11a748  3      OPC=addl_r32_imm8   
  movl %edi, %edi               #  5     0x11a74b  2      OPC=movl_r32_r32    
  pushq %rbx                    #  6     0x11a74d  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  7     0x11a74e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  8     0x11a751  3      OPC=addq_r64_r64    
  nop                           #  9     0x11a754  1      OPC=nop             
  nop                           #  10    0x11a755  1      OPC=nop             
  nop                           #  11    0x11a756  1      OPC=nop             
  nop                           #  12    0x11a757  1      OPC=nop             
  nop                           #  13    0x11a758  1      OPC=nop             
  nop                           #  14    0x11a759  1      OPC=nop             
  nop                           #  15    0x11a75a  1      OPC=nop             
  callq ._malloc_r              #  16    0x11a75b  5      OPC=callq_label     
  movl %eax, %ebx               #  17    0x11a760  2      OPC=movl_r32_r32    
  xorl %eax, %eax               #  18    0x11a762  2      OPC=xorl_r32_r32    
  testq %rbx, %rbx              #  19    0x11a764  3      OPC=testq_r64_r64   
  je .L_11a7c0                  #  20    0x11a767  2      OPC=je_label        
  leal 0x10(%rbx), %edi         #  21    0x11a769  3      OPC=leal_r32_m16    
  movl %r12d, %edx              #  22    0x11a76c  3      OPC=movl_r32_r32    
  movl %ebx, %ebx               #  23    0x11a76f  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)      #  24    0x11a771  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx               #  25    0x11a779  2      OPC=movl_r32_r32    
  movl %r12d, 0x4(%r15,%rbx,1)  #  26    0x11a77b  5      OPC=movl_m32_r32    
  shll $0x7, %edx               #  27    0x11a780  3      OPC=shll_r32_imm8   
  xorl %esi, %esi               #  28    0x11a783  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx               #  29    0x11a785  2      OPC=movl_r32_r32    
  movl %edi, 0x8(%r15,%rbx,1)   #  30    0x11a787  5      OPC=movl_m32_r32    
  nop                           #  31    0x11a78c  1      OPC=nop             
  nop                           #  32    0x11a78d  1      OPC=nop             
  nop                           #  33    0x11a78e  1      OPC=nop             
  nop                           #  34    0x11a78f  1      OPC=nop             
  nop                           #  35    0x11a790  1      OPC=nop             
  nop                           #  36    0x11a791  1      OPC=nop             
  nop                           #  37    0x11a792  1      OPC=nop             
  nop                           #  38    0x11a793  1      OPC=nop             
  nop                           #  39    0x11a794  1      OPC=nop             
  nop                           #  40    0x11a795  1      OPC=nop             
  nop                           #  41    0x11a796  1      OPC=nop             
  nop                           #  42    0x11a797  1      OPC=nop             
  nop                           #  43    0x11a798  1      OPC=nop             
  nop                           #  44    0x11a799  1      OPC=nop             
  nop                           #  45    0x11a79a  1      OPC=nop             
  callq .memset                 #  46    0x11a79b  5      OPC=callq_label     
  movq %rbx, %rax               #  47    0x11a7a0  3      OPC=movq_r64_r64    
  nop                           #  48    0x11a7a3  1      OPC=nop             
  nop                           #  49    0x11a7a4  1      OPC=nop             
  nop                           #  50    0x11a7a5  1      OPC=nop             
  nop                           #  51    0x11a7a6  1      OPC=nop             
  nop                           #  52    0x11a7a7  1      OPC=nop             
  nop                           #  53    0x11a7a8  1      OPC=nop             
  nop                           #  54    0x11a7a9  1      OPC=nop             
  nop                           #  55    0x11a7aa  1      OPC=nop             
  nop                           #  56    0x11a7ab  1      OPC=nop             
  nop                           #  57    0x11a7ac  1      OPC=nop             
  nop                           #  58    0x11a7ad  1      OPC=nop             
  nop                           #  59    0x11a7ae  1      OPC=nop             
  nop                           #  60    0x11a7af  1      OPC=nop             
  nop                           #  61    0x11a7b0  1      OPC=nop             
  nop                           #  62    0x11a7b1  1      OPC=nop             
  nop                           #  63    0x11a7b2  1      OPC=nop             
  nop                           #  64    0x11a7b3  1      OPC=nop             
  nop                           #  65    0x11a7b4  1      OPC=nop             
  nop                           #  66    0x11a7b5  1      OPC=nop             
  nop                           #  67    0x11a7b6  1      OPC=nop             
  nop                           #  68    0x11a7b7  1      OPC=nop             
  nop                           #  69    0x11a7b8  1      OPC=nop             
  nop                           #  70    0x11a7b9  1      OPC=nop             
  nop                           #  71    0x11a7ba  1      OPC=nop             
  nop                           #  72    0x11a7bb  1      OPC=nop             
  nop                           #  73    0x11a7bc  1      OPC=nop             
  nop                           #  74    0x11a7bd  1      OPC=nop             
  nop                           #  75    0x11a7be  1      OPC=nop             
  nop                           #  76    0x11a7bf  1      OPC=nop             
.L_11a7c0:                      #        0x11a7c0  0      OPC=<label>         
  addl $0x8, %esp               #  77    0x11a7c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  78    0x11a7c3  3      OPC=addq_r64_r64    
  popq %rbx                     #  79    0x11a7c6  1      OPC=popq_r64_1      
  popq %r12                     #  80    0x11a7c7  2      OPC=popq_r64_1      
  popq %r11                     #  81    0x11a7c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  82    0x11a7cb  7      OPC=andl_r32_imm32  
  nop                           #  83    0x11a7d2  1      OPC=nop             
  nop                           #  84    0x11a7d3  1      OPC=nop             
  nop                           #  85    0x11a7d4  1      OPC=nop             
  nop                           #  86    0x11a7d5  1      OPC=nop             
  addq %r15, %r11               #  87    0x11a7d6  3      OPC=addq_r64_r64    
  jmpq %r11                     #  88    0x11a7d9  3      OPC=jmpq_r64        
  nop                           #  89    0x11a7dc  1      OPC=nop             
  nop                           #  90    0x11a7dd  1      OPC=nop             
  nop                           #  91    0x11a7de  1      OPC=nop             
  nop                           #  92    0x11a7df  1      OPC=nop             
  nop                           #  93    0x11a7e0  1      OPC=nop             
  nop                           #  94    0x11a7e1  1      OPC=nop             
  nop                           #  95    0x11a7e2  1      OPC=nop             
  nop                           #  96    0x11a7e3  1      OPC=nop             
  nop                           #  97    0x11a7e4  1      OPC=nop             
  nop                           #  98    0x11a7e5  1      OPC=nop             
  nop                           #  99    0x11a7e6  1      OPC=nop             
                                                                              
.size __sfmoreglue, .-__sfmoreglue

