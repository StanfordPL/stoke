  .text
  .globl __sfmoreglue
  .type __sfmoreglue, @function

#! file-offset 0x15aa40
#! rip-offset  0x11aa40
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.__sfmoreglue:                  #        0x11aa40  0      OPC=<label>         
  pushq %r12                    #  1     0x11aa40  2      OPC=pushq_r64_1     
  movl %esi, %r12d              #  2     0x11aa42  3      OPC=movl_r32_r32    
  shll $0x7, %esi               #  3     0x11aa45  3      OPC=shll_r32_imm8   
  addl $0x10, %esi              #  4     0x11aa48  3      OPC=addl_r32_imm8   
  movl %edi, %edi               #  5     0x11aa4b  2      OPC=movl_r32_r32    
  pushq %rbx                    #  6     0x11aa4d  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  7     0x11aa4e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  8     0x11aa51  3      OPC=addq_r64_r64    
  nop                           #  9     0x11aa54  1      OPC=nop             
  nop                           #  10    0x11aa55  1      OPC=nop             
  nop                           #  11    0x11aa56  1      OPC=nop             
  nop                           #  12    0x11aa57  1      OPC=nop             
  nop                           #  13    0x11aa58  1      OPC=nop             
  nop                           #  14    0x11aa59  1      OPC=nop             
  nop                           #  15    0x11aa5a  1      OPC=nop             
  callq ._malloc_r              #  16    0x11aa5b  5      OPC=callq_label     
  movl %eax, %ebx               #  17    0x11aa60  2      OPC=movl_r32_r32    
  xorl %eax, %eax               #  18    0x11aa62  2      OPC=xorl_r32_r32    
  testq %rbx, %rbx              #  19    0x11aa64  3      OPC=testq_r64_r64   
  je .L_11aac0                  #  20    0x11aa67  2      OPC=je_label        
  leal 0x10(%rbx), %edi         #  21    0x11aa69  3      OPC=leal_r32_m16    
  movl %r12d, %edx              #  22    0x11aa6c  3      OPC=movl_r32_r32    
  movl %ebx, %ebx               #  23    0x11aa6f  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)      #  24    0x11aa71  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx               #  25    0x11aa79  2      OPC=movl_r32_r32    
  movl %r12d, 0x4(%r15,%rbx,1)  #  26    0x11aa7b  5      OPC=movl_m32_r32    
  shll $0x7, %edx               #  27    0x11aa80  3      OPC=shll_r32_imm8   
  xorl %esi, %esi               #  28    0x11aa83  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx               #  29    0x11aa85  2      OPC=movl_r32_r32    
  movl %edi, 0x8(%r15,%rbx,1)   #  30    0x11aa87  5      OPC=movl_m32_r32    
  nop                           #  31    0x11aa8c  1      OPC=nop             
  nop                           #  32    0x11aa8d  1      OPC=nop             
  nop                           #  33    0x11aa8e  1      OPC=nop             
  nop                           #  34    0x11aa8f  1      OPC=nop             
  nop                           #  35    0x11aa90  1      OPC=nop             
  nop                           #  36    0x11aa91  1      OPC=nop             
  nop                           #  37    0x11aa92  1      OPC=nop             
  nop                           #  38    0x11aa93  1      OPC=nop             
  nop                           #  39    0x11aa94  1      OPC=nop             
  nop                           #  40    0x11aa95  1      OPC=nop             
  nop                           #  41    0x11aa96  1      OPC=nop             
  nop                           #  42    0x11aa97  1      OPC=nop             
  nop                           #  43    0x11aa98  1      OPC=nop             
  nop                           #  44    0x11aa99  1      OPC=nop             
  nop                           #  45    0x11aa9a  1      OPC=nop             
  callq .memset                 #  46    0x11aa9b  5      OPC=callq_label     
  movq %rbx, %rax               #  47    0x11aaa0  3      OPC=movq_r64_r64    
  nop                           #  48    0x11aaa3  1      OPC=nop             
  nop                           #  49    0x11aaa4  1      OPC=nop             
  nop                           #  50    0x11aaa5  1      OPC=nop             
  nop                           #  51    0x11aaa6  1      OPC=nop             
  nop                           #  52    0x11aaa7  1      OPC=nop             
  nop                           #  53    0x11aaa8  1      OPC=nop             
  nop                           #  54    0x11aaa9  1      OPC=nop             
  nop                           #  55    0x11aaaa  1      OPC=nop             
  nop                           #  56    0x11aaab  1      OPC=nop             
  nop                           #  57    0x11aaac  1      OPC=nop             
  nop                           #  58    0x11aaad  1      OPC=nop             
  nop                           #  59    0x11aaae  1      OPC=nop             
  nop                           #  60    0x11aaaf  1      OPC=nop             
  nop                           #  61    0x11aab0  1      OPC=nop             
  nop                           #  62    0x11aab1  1      OPC=nop             
  nop                           #  63    0x11aab2  1      OPC=nop             
  nop                           #  64    0x11aab3  1      OPC=nop             
  nop                           #  65    0x11aab4  1      OPC=nop             
  nop                           #  66    0x11aab5  1      OPC=nop             
  nop                           #  67    0x11aab6  1      OPC=nop             
  nop                           #  68    0x11aab7  1      OPC=nop             
  nop                           #  69    0x11aab8  1      OPC=nop             
  nop                           #  70    0x11aab9  1      OPC=nop             
  nop                           #  71    0x11aaba  1      OPC=nop             
  nop                           #  72    0x11aabb  1      OPC=nop             
  nop                           #  73    0x11aabc  1      OPC=nop             
  nop                           #  74    0x11aabd  1      OPC=nop             
  nop                           #  75    0x11aabe  1      OPC=nop             
  nop                           #  76    0x11aabf  1      OPC=nop             
.L_11aac0:                      #        0x11aac0  0      OPC=<label>         
  addl $0x8, %esp               #  77    0x11aac0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  78    0x11aac3  3      OPC=addq_r64_r64    
  popq %rbx                     #  79    0x11aac6  1      OPC=popq_r64_1      
  popq %r12                     #  80    0x11aac7  2      OPC=popq_r64_1      
  popq %r11                     #  81    0x11aac9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  82    0x11aacb  7      OPC=andl_r32_imm32  
  nop                           #  83    0x11aad2  1      OPC=nop             
  nop                           #  84    0x11aad3  1      OPC=nop             
  nop                           #  85    0x11aad4  1      OPC=nop             
  nop                           #  86    0x11aad5  1      OPC=nop             
  addq %r15, %r11               #  87    0x11aad6  3      OPC=addq_r64_r64    
  jmpq %r11                     #  88    0x11aad9  3      OPC=jmpq_r64        
  nop                           #  89    0x11aadc  1      OPC=nop             
  nop                           #  90    0x11aadd  1      OPC=nop             
  nop                           #  91    0x11aade  1      OPC=nop             
  nop                           #  92    0x11aadf  1      OPC=nop             
  nop                           #  93    0x11aae0  1      OPC=nop             
  nop                           #  94    0x11aae1  1      OPC=nop             
  nop                           #  95    0x11aae2  1      OPC=nop             
  nop                           #  96    0x11aae3  1      OPC=nop             
  nop                           #  97    0x11aae4  1      OPC=nop             
  nop                           #  98    0x11aae5  1      OPC=nop             
  nop                           #  99    0x11aae6  1      OPC=nop             
                                                                              
.size __sfmoreglue, .-__sfmoreglue

