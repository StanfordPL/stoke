  .text
  .globl __gcclibcxx_demangle_callback
  .type __gcclibcxx_demangle_callback, @function

#! file-offset 0x1462e0
#! rip-offset  0x1062e0
#! capacity    128 bytes

# Text                           #  Line  RIP       Bytes  Opcode                
.__gcclibcxx_demangle_callback:  #        0x1062e0  0      OPC=<label>           
  movl %esi, %esi                #  1     0x1062e0  2      OPC=movl_r32_r32      
  subl $0x8, %esp                #  2     0x1062e2  3      OPC=subl_r32_imm8     
  addq %r15, %rsp                #  3     0x1062e5  3      OPC=addq_r64_r64      
  movl %edi, %edi                #  4     0x1062e8  2      OPC=movl_r32_r32      
  testq %rsi, %rsi               #  5     0x1062ea  3      OPC=testq_r64_r64     
  movl %edx, %edx                #  6     0x1062ed  2      OPC=movl_r32_r32      
  je .L_106340                   #  7     0x1062ef  2      OPC=je_label          
  testq %rdi, %rdi               #  8     0x1062f1  3      OPC=testq_r64_r64     
  je .L_106340                   #  9     0x1062f4  2      OPC=je_label          
  movl %edx, %ecx                #  10    0x1062f6  2      OPC=movl_r32_r32      
  movl %esi, %edx                #  11    0x1062f8  2      OPC=movl_r32_r32      
  movl $0x11, %esi               #  12    0x1062fa  5      OPC=movl_r32_imm32    
  nop                            #  13    0x1062ff  1      OPC=nop               
  nop                            #  14    0x106300  1      OPC=nop               
  nop                            #  15    0x106301  1      OPC=nop               
  nop                            #  16    0x106302  1      OPC=nop               
  nop                            #  17    0x106303  1      OPC=nop               
  nop                            #  18    0x106304  1      OPC=nop               
  nop                            #  19    0x106305  1      OPC=nop               
  nop                            #  20    0x106306  1      OPC=nop               
  nop                            #  21    0x106307  1      OPC=nop               
  nop                            #  22    0x106308  1      OPC=nop               
  nop                            #  23    0x106309  1      OPC=nop               
  nop                            #  24    0x10630a  1      OPC=nop               
  nop                            #  25    0x10630b  1      OPC=nop               
  nop                            #  26    0x10630c  1      OPC=nop               
  nop                            #  27    0x10630d  1      OPC=nop               
  nop                            #  28    0x10630e  1      OPC=nop               
  nop                            #  29    0x10630f  1      OPC=nop               
  nop                            #  30    0x106310  1      OPC=nop               
  nop                            #  31    0x106311  1      OPC=nop               
  nop                            #  32    0x106312  1      OPC=nop               
  nop                            #  33    0x106313  1      OPC=nop               
  nop                            #  34    0x106314  1      OPC=nop               
  nop                            #  35    0x106315  1      OPC=nop               
  nop                            #  36    0x106316  1      OPC=nop               
  nop                            #  37    0x106317  1      OPC=nop               
  nop                            #  38    0x106318  1      OPC=nop               
  nop                            #  39    0x106319  1      OPC=nop               
  nop                            #  40    0x10631a  1      OPC=nop               
  callq .d_demangle_callback     #  41    0x10631b  5      OPC=callq_label       
  cmpl $0x1, %eax                #  42    0x106320  3      OPC=cmpl_r32_imm8     
  sbbl %eax, %eax                #  43    0x106323  2      OPC=sbbl_r32_r32      
  addl $0x8, %esp                #  44    0x106325  3      OPC=addl_r32_imm8     
  addq %r15, %rsp                #  45    0x106328  3      OPC=addq_r64_r64      
  popq %r11                      #  46    0x10632b  2      OPC=popq_r64_1        
  andl $0xfffffffe, %eax         #  47    0x10632d  6      OPC=andl_r32_imm32    
  nop                            #  48    0x106333  1      OPC=nop               
  nop                            #  49    0x106334  1      OPC=nop               
  nop                            #  50    0x106335  1      OPC=nop               
  andl $0xffffffe0, %r11d        #  51    0x106336  7      OPC=andl_r32_imm32    
  nop                            #  52    0x10633d  1      OPC=nop               
  nop                            #  53    0x10633e  1      OPC=nop               
  nop                            #  54    0x10633f  1      OPC=nop               
  nop                            #  55    0x106340  1      OPC=nop               
  addq %r15, %r11                #  56    0x106341  3      OPC=addq_r64_r64      
  jmpq %r11                      #  57    0x106344  3      OPC=jmpq_r64          
  nop                            #  58    0x106347  1      OPC=nop               
  nop                            #  59    0x106348  1      OPC=nop               
  nop                            #  60    0x106349  1      OPC=nop               
  nop                            #  61    0x10634a  1      OPC=nop               
  nop                            #  62    0x10634b  1      OPC=nop               
  nop                            #  63    0x10634c  1      OPC=nop               
.L_106340:                       #        0x10634d  0      OPC=<label>           
  addl $0x8, %esp                #  64    0x10634d  3      OPC=addl_r32_imm8     
  addq %r15, %rsp                #  65    0x106350  3      OPC=addq_r64_r64      
  movl $0xfffffffd, %eax         #  66    0x106353  6      OPC=movl_r32_imm32_1  
  popq %r11                      #  67    0x106359  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d        #  68    0x10635b  7      OPC=andl_r32_imm32    
  nop                            #  69    0x106362  1      OPC=nop               
  nop                            #  70    0x106363  1      OPC=nop               
  nop                            #  71    0x106364  1      OPC=nop               
  nop                            #  72    0x106365  1      OPC=nop               
  addq %r15, %r11                #  73    0x106366  3      OPC=addq_r64_r64      
  jmpq %r11                      #  74    0x106369  3      OPC=jmpq_r64          
  nop                            #  75    0x10636c  1      OPC=nop               
  nop                            #  76    0x10636d  1      OPC=nop               
  nop                            #  77    0x10636e  1      OPC=nop               
  nop                            #  78    0x10636f  1      OPC=nop               
  nop                            #  79    0x106370  1      OPC=nop               
  nop                            #  80    0x106371  1      OPC=nop               
  nop                            #  81    0x106372  1      OPC=nop               
  nop                            #  82    0x106373  1      OPC=nop               
  nop                            #  83    0x106374  1      OPC=nop               
                                                                                 
.size __gcclibcxx_demangle_callback, .-__gcclibcxx_demangle_callback

