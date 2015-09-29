  .text
  .globl __do_global_ctors_aux
  .type __do_global_ctors_aux, @function

#! file-offset 0x199000
#! rip-offset  0x159000
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__do_global_ctors_aux:       #        0x159000  0      OPC=<label>         
  pushq %rbp                  #  1     0x159000  1      OPC=pushq_r64_1     
  movq %rsp, %rbp             #  2     0x159001  3      OPC=movq_r64_r64    
  pushq %rbx                  #  3     0x159004  1      OPC=pushq_r64_1     
  subl $0x8, %esp             #  4     0x159005  3      OPC=subl_r32_imm8   
  addq %r15, %rsp             #  5     0x159008  3      OPC=addq_r64_r64    
  movl 0xff17487(%rip), %eax  #  6     0x15900b  6      OPC=movl_r32_m32    
  cmpl $0xffffffff, %eax      #  7     0x159011  6      OPC=cmpl_r32_imm32  
  nop                         #  8     0x159017  1      OPC=nop             
  nop                         #  9     0x159018  1      OPC=nop             
  nop                         #  10    0x159019  1      OPC=nop             
  je .L_159060                #  11    0x15901a  2      OPC=je_label        
  movl $0x10070498, %ebx      #  12    0x15901c  5      OPC=movl_r32_imm32  
  movl %ebx, %ebx             #  13    0x159021  2      OPC=movl_r32_r32    
  nop                         #  14    0x159023  1      OPC=nop             
  nop                         #  15    0x159024  1      OPC=nop             
  nop                         #  16    0x159025  1      OPC=nop             
.L_159020:                    #        0x159026  0      OPC=<label>         
  subl $0x4, %ebx             #  17    0x159026  3      OPC=subl_r32_imm8   
  nop                         #  18    0x159029  1      OPC=nop             
  nop                         #  19    0x15902a  1      OPC=nop             
  nop                         #  20    0x15902b  1      OPC=nop             
  nop                         #  21    0x15902c  1      OPC=nop             
  nop                         #  22    0x15902d  1      OPC=nop             
  nop                         #  23    0x15902e  1      OPC=nop             
  nop                         #  24    0x15902f  1      OPC=nop             
  nop                         #  25    0x159030  1      OPC=nop             
  nop                         #  26    0x159031  1      OPC=nop             
  nop                         #  27    0x159032  1      OPC=nop             
  nop                         #  28    0x159033  1      OPC=nop             
  nop                         #  29    0x159034  1      OPC=nop             
  nop                         #  30    0x159035  1      OPC=nop             
  nop                         #  31    0x159036  1      OPC=nop             
  nop                         #  32    0x159037  1      OPC=nop             
  nop                         #  33    0x159038  1      OPC=nop             
  nop                         #  34    0x159039  1      OPC=nop             
  nop                         #  35    0x15903a  1      OPC=nop             
  nop                         #  36    0x15903b  1      OPC=nop             
  nop                         #  37    0x15903c  1      OPC=nop             
  nop                         #  38    0x15903d  1      OPC=nop             
  andl $0xffffffe0, %eax      #  39    0x15903e  6      OPC=andl_r32_imm32  
  nop                         #  40    0x159044  1      OPC=nop             
  nop                         #  41    0x159045  1      OPC=nop             
  nop                         #  42    0x159046  1      OPC=nop             
  addq %r15, %rax             #  43    0x159047  3      OPC=addq_r64_r64    
  callq %rax                  #  44    0x15904a  2      OPC=callq_r64       
  movl %ebx, %ebx             #  45    0x15904c  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax    #  46    0x15904e  4      OPC=movl_r32_m32    
  cmpl $0xffffffff, %eax      #  47    0x159052  6      OPC=cmpl_r32_imm32  
  nop                         #  48    0x159058  1      OPC=nop             
  nop                         #  49    0x159059  1      OPC=nop             
  nop                         #  50    0x15905a  1      OPC=nop             
  jne .L_159020               #  51    0x15905b  2      OPC=jne_label       
  nop                         #  52    0x15905d  1      OPC=nop             
  nop                         #  53    0x15905e  1      OPC=nop             
  nop                         #  54    0x15905f  1      OPC=nop             
  nop                         #  55    0x159060  1      OPC=nop             
  nop                         #  56    0x159061  1      OPC=nop             
  nop                         #  57    0x159062  1      OPC=nop             
  nop                         #  58    0x159063  1      OPC=nop             
  nop                         #  59    0x159064  1      OPC=nop             
  nop                         #  60    0x159065  1      OPC=nop             
  nop                         #  61    0x159066  1      OPC=nop             
  nop                         #  62    0x159067  1      OPC=nop             
  nop                         #  63    0x159068  1      OPC=nop             
  nop                         #  64    0x159069  1      OPC=nop             
  nop                         #  65    0x15906a  1      OPC=nop             
  nop                         #  66    0x15906b  1      OPC=nop             
  nop                         #  67    0x15906c  1      OPC=nop             
  nop                         #  68    0x15906d  1      OPC=nop             
  nop                         #  69    0x15906e  1      OPC=nop             
  nop                         #  70    0x15906f  1      OPC=nop             
  nop                         #  71    0x159070  1      OPC=nop             
  nop                         #  72    0x159071  1      OPC=nop             
.L_159060:                    #        0x159072  0      OPC=<label>         
  addl $0x8, %esp             #  73    0x159072  3      OPC=addl_r32_imm8   
  addq %r15, %rsp             #  74    0x159075  3      OPC=addq_r64_r64    
  popq %rbx                   #  75    0x159078  1      OPC=popq_r64_1      
  popq %r11                   #  76    0x159079  2      OPC=popq_r64_1      
  movl %r11d, %ebp            #  77    0x15907b  3      OPC=movl_r32_r32    
  addq %r15, %rbp             #  78    0x15907e  3      OPC=addq_r64_r64    
  popq %r11                   #  79    0x159081  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  80    0x159083  7      OPC=andl_r32_imm32  
  nop                         #  81    0x15908a  1      OPC=nop             
  nop                         #  82    0x15908b  1      OPC=nop             
  nop                         #  83    0x15908c  1      OPC=nop             
  nop                         #  84    0x15908d  1      OPC=nop             
  addq %r15, %r11             #  85    0x15908e  3      OPC=addq_r64_r64    
  jmpq %r11                   #  86    0x159091  3      OPC=jmpq_r64        
  nop                         #  87    0x159094  1      OPC=nop             
  nop                         #  88    0x159095  1      OPC=nop             
  nop                         #  89    0x159096  1      OPC=nop             
  nop                         #  90    0x159097  1      OPC=nop             
  nop                         #  91    0x159098  1      OPC=nop             
                                                                            
.size __do_global_ctors_aux, .-__do_global_ctors_aux

