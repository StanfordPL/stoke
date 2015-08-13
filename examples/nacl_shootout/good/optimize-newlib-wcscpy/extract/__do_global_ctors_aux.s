  .text
  .globl __do_global_ctors_aux
  .type __do_global_ctors_aux, @function

#! file-offset 0x1985e0
#! rip-offset  0x1585e0
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__do_global_ctors_aux:       #        0x1585e0  0      OPC=<label>         
  pushq %rbp                  #  1     0x1585e0  1      OPC=pushq_r64_1     
  movq %rsp, %rbp             #  2     0x1585e1  3      OPC=movq_r64_r64    
  pushq %rbx                  #  3     0x1585e4  1      OPC=pushq_r64_1     
  subl $0x8, %esp             #  4     0x1585e5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp             #  5     0x1585e8  3      OPC=addq_r64_r64    
  movl 0xff17ea7(%rip), %eax  #  6     0x1585eb  6      OPC=movl_r32_m32    
  cmpl $0xffffffff, %eax      #  7     0x1585f1  6      OPC=cmpl_r32_imm32  
  nop                         #  8     0x1585f7  1      OPC=nop             
  nop                         #  9     0x1585f8  1      OPC=nop             
  nop                         #  10    0x1585f9  1      OPC=nop             
  je .L_158640                #  11    0x1585fa  2      OPC=je_label        
  movl $0x10070498, %ebx      #  12    0x1585fc  5      OPC=movl_r32_imm32  
  movl %ebx, %ebx             #  13    0x158601  2      OPC=movl_r32_r32    
  nop                         #  14    0x158603  1      OPC=nop             
  nop                         #  15    0x158604  1      OPC=nop             
  nop                         #  16    0x158605  1      OPC=nop             
.L_158600:                    #        0x158606  0      OPC=<label>         
  subl $0x4, %ebx             #  17    0x158606  3      OPC=subl_r32_imm8   
  nop                         #  18    0x158609  1      OPC=nop             
  nop                         #  19    0x15860a  1      OPC=nop             
  nop                         #  20    0x15860b  1      OPC=nop             
  nop                         #  21    0x15860c  1      OPC=nop             
  nop                         #  22    0x15860d  1      OPC=nop             
  nop                         #  23    0x15860e  1      OPC=nop             
  nop                         #  24    0x15860f  1      OPC=nop             
  nop                         #  25    0x158610  1      OPC=nop             
  nop                         #  26    0x158611  1      OPC=nop             
  nop                         #  27    0x158612  1      OPC=nop             
  nop                         #  28    0x158613  1      OPC=nop             
  nop                         #  29    0x158614  1      OPC=nop             
  nop                         #  30    0x158615  1      OPC=nop             
  nop                         #  31    0x158616  1      OPC=nop             
  nop                         #  32    0x158617  1      OPC=nop             
  nop                         #  33    0x158618  1      OPC=nop             
  nop                         #  34    0x158619  1      OPC=nop             
  nop                         #  35    0x15861a  1      OPC=nop             
  nop                         #  36    0x15861b  1      OPC=nop             
  nop                         #  37    0x15861c  1      OPC=nop             
  nop                         #  38    0x15861d  1      OPC=nop             
  andl $0xffffffe0, %eax      #  39    0x15861e  6      OPC=andl_r32_imm32  
  nop                         #  40    0x158624  1      OPC=nop             
  nop                         #  41    0x158625  1      OPC=nop             
  nop                         #  42    0x158626  1      OPC=nop             
  addq %r15, %rax             #  43    0x158627  3      OPC=addq_r64_r64    
  callq %rax                  #  44    0x15862a  2      OPC=callq_r64       
  movl %ebx, %ebx             #  45    0x15862c  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax    #  46    0x15862e  4      OPC=movl_r32_m32    
  cmpl $0xffffffff, %eax      #  47    0x158632  6      OPC=cmpl_r32_imm32  
  nop                         #  48    0x158638  1      OPC=nop             
  nop                         #  49    0x158639  1      OPC=nop             
  nop                         #  50    0x15863a  1      OPC=nop             
  jne .L_158600               #  51    0x15863b  2      OPC=jne_label       
  nop                         #  52    0x15863d  1      OPC=nop             
  nop                         #  53    0x15863e  1      OPC=nop             
  nop                         #  54    0x15863f  1      OPC=nop             
  nop                         #  55    0x158640  1      OPC=nop             
  nop                         #  56    0x158641  1      OPC=nop             
  nop                         #  57    0x158642  1      OPC=nop             
  nop                         #  58    0x158643  1      OPC=nop             
  nop                         #  59    0x158644  1      OPC=nop             
  nop                         #  60    0x158645  1      OPC=nop             
  nop                         #  61    0x158646  1      OPC=nop             
  nop                         #  62    0x158647  1      OPC=nop             
  nop                         #  63    0x158648  1      OPC=nop             
  nop                         #  64    0x158649  1      OPC=nop             
  nop                         #  65    0x15864a  1      OPC=nop             
  nop                         #  66    0x15864b  1      OPC=nop             
  nop                         #  67    0x15864c  1      OPC=nop             
  nop                         #  68    0x15864d  1      OPC=nop             
  nop                         #  69    0x15864e  1      OPC=nop             
  nop                         #  70    0x15864f  1      OPC=nop             
  nop                         #  71    0x158650  1      OPC=nop             
  nop                         #  72    0x158651  1      OPC=nop             
.L_158640:                    #        0x158652  0      OPC=<label>         
  addl $0x8, %esp             #  73    0x158652  3      OPC=addl_r32_imm8   
  addq %r15, %rsp             #  74    0x158655  3      OPC=addq_r64_r64    
  popq %rbx                   #  75    0x158658  1      OPC=popq_r64_1      
  popq %r11                   #  76    0x158659  2      OPC=popq_r64_1      
  movl %r11d, %ebp            #  77    0x15865b  3      OPC=movl_r32_r32    
  addq %r15, %rbp             #  78    0x15865e  3      OPC=addq_r64_r64    
  popq %r11                   #  79    0x158661  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  80    0x158663  7      OPC=andl_r32_imm32  
  nop                         #  81    0x15866a  1      OPC=nop             
  nop                         #  82    0x15866b  1      OPC=nop             
  nop                         #  83    0x15866c  1      OPC=nop             
  nop                         #  84    0x15866d  1      OPC=nop             
  addq %r15, %r11             #  85    0x15866e  3      OPC=addq_r64_r64    
  jmpq %r11                   #  86    0x158671  3      OPC=jmpq_r64        
  nop                         #  87    0x158674  1      OPC=nop             
  nop                         #  88    0x158675  1      OPC=nop             
  nop                         #  89    0x158676  1      OPC=nop             
  nop                         #  90    0x158677  1      OPC=nop             
  nop                         #  91    0x158678  1      OPC=nop             
                                                                            
.size __do_global_ctors_aux, .-__do_global_ctors_aux

