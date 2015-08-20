  .text
  .globl __do_global_ctors_aux
  .type __do_global_ctors_aux, @function

#! file-offset 0x1988e0
#! rip-offset  0x1588e0
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__do_global_ctors_aux:       #        0x1588e0  0      OPC=<label>         
  pushq %rbp                  #  1     0x1588e0  1      OPC=pushq_r64_1     
  movq %rsp, %rbp             #  2     0x1588e1  3      OPC=movq_r64_r64    
  pushq %rbx                  #  3     0x1588e4  1      OPC=pushq_r64_1     
  subl $0x8, %esp             #  4     0x1588e5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp             #  5     0x1588e8  3      OPC=addq_r64_r64    
  movl 0xff17ba7(%rip), %eax  #  6     0x1588eb  6      OPC=movl_r32_m32    
  cmpl $0xffffffff, %eax      #  7     0x1588f1  6      OPC=cmpl_r32_imm32  
  nop                         #  8     0x1588f7  1      OPC=nop             
  nop                         #  9     0x1588f8  1      OPC=nop             
  nop                         #  10    0x1588f9  1      OPC=nop             
  je .L_158940                #  11    0x1588fa  2      OPC=je_label        
  movl $0x10070498, %ebx      #  12    0x1588fc  5      OPC=movl_r32_imm32  
  movl %ebx, %ebx             #  13    0x158901  2      OPC=movl_r32_r32    
  nop                         #  14    0x158903  1      OPC=nop             
  nop                         #  15    0x158904  1      OPC=nop             
  nop                         #  16    0x158905  1      OPC=nop             
.L_158900:                    #        0x158906  0      OPC=<label>         
  subl $0x4, %ebx             #  17    0x158906  3      OPC=subl_r32_imm8   
  nop                         #  18    0x158909  1      OPC=nop             
  nop                         #  19    0x15890a  1      OPC=nop             
  nop                         #  20    0x15890b  1      OPC=nop             
  nop                         #  21    0x15890c  1      OPC=nop             
  nop                         #  22    0x15890d  1      OPC=nop             
  nop                         #  23    0x15890e  1      OPC=nop             
  nop                         #  24    0x15890f  1      OPC=nop             
  nop                         #  25    0x158910  1      OPC=nop             
  nop                         #  26    0x158911  1      OPC=nop             
  nop                         #  27    0x158912  1      OPC=nop             
  nop                         #  28    0x158913  1      OPC=nop             
  nop                         #  29    0x158914  1      OPC=nop             
  nop                         #  30    0x158915  1      OPC=nop             
  nop                         #  31    0x158916  1      OPC=nop             
  nop                         #  32    0x158917  1      OPC=nop             
  nop                         #  33    0x158918  1      OPC=nop             
  nop                         #  34    0x158919  1      OPC=nop             
  nop                         #  35    0x15891a  1      OPC=nop             
  nop                         #  36    0x15891b  1      OPC=nop             
  nop                         #  37    0x15891c  1      OPC=nop             
  nop                         #  38    0x15891d  1      OPC=nop             
  andl $0xffffffe0, %eax      #  39    0x15891e  6      OPC=andl_r32_imm32  
  nop                         #  40    0x158924  1      OPC=nop             
  nop                         #  41    0x158925  1      OPC=nop             
  nop                         #  42    0x158926  1      OPC=nop             
  addq %r15, %rax             #  43    0x158927  3      OPC=addq_r64_r64    
  callq %rax                  #  44    0x15892a  2      OPC=callq_r64       
  movl %ebx, %ebx             #  45    0x15892c  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax    #  46    0x15892e  4      OPC=movl_r32_m32    
  cmpl $0xffffffff, %eax      #  47    0x158932  6      OPC=cmpl_r32_imm32  
  nop                         #  48    0x158938  1      OPC=nop             
  nop                         #  49    0x158939  1      OPC=nop             
  nop                         #  50    0x15893a  1      OPC=nop             
  jne .L_158900               #  51    0x15893b  2      OPC=jne_label       
  nop                         #  52    0x15893d  1      OPC=nop             
  nop                         #  53    0x15893e  1      OPC=nop             
  nop                         #  54    0x15893f  1      OPC=nop             
  nop                         #  55    0x158940  1      OPC=nop             
  nop                         #  56    0x158941  1      OPC=nop             
  nop                         #  57    0x158942  1      OPC=nop             
  nop                         #  58    0x158943  1      OPC=nop             
  nop                         #  59    0x158944  1      OPC=nop             
  nop                         #  60    0x158945  1      OPC=nop             
  nop                         #  61    0x158946  1      OPC=nop             
  nop                         #  62    0x158947  1      OPC=nop             
  nop                         #  63    0x158948  1      OPC=nop             
  nop                         #  64    0x158949  1      OPC=nop             
  nop                         #  65    0x15894a  1      OPC=nop             
  nop                         #  66    0x15894b  1      OPC=nop             
  nop                         #  67    0x15894c  1      OPC=nop             
  nop                         #  68    0x15894d  1      OPC=nop             
  nop                         #  69    0x15894e  1      OPC=nop             
  nop                         #  70    0x15894f  1      OPC=nop             
  nop                         #  71    0x158950  1      OPC=nop             
  nop                         #  72    0x158951  1      OPC=nop             
.L_158940:                    #        0x158952  0      OPC=<label>         
  addl $0x8, %esp             #  73    0x158952  3      OPC=addl_r32_imm8   
  addq %r15, %rsp             #  74    0x158955  3      OPC=addq_r64_r64    
  popq %rbx                   #  75    0x158958  1      OPC=popq_r64_1      
  popq %r11                   #  76    0x158959  2      OPC=popq_r64_1      
  movl %r11d, %ebp            #  77    0x15895b  3      OPC=movl_r32_r32    
  addq %r15, %rbp             #  78    0x15895e  3      OPC=addq_r64_r64    
  popq %r11                   #  79    0x158961  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  80    0x158963  7      OPC=andl_r32_imm32  
  nop                         #  81    0x15896a  1      OPC=nop             
  nop                         #  82    0x15896b  1      OPC=nop             
  nop                         #  83    0x15896c  1      OPC=nop             
  nop                         #  84    0x15896d  1      OPC=nop             
  addq %r15, %r11             #  85    0x15896e  3      OPC=addq_r64_r64    
  jmpq %r11                   #  86    0x158971  3      OPC=jmpq_r64        
  nop                         #  87    0x158974  1      OPC=nop             
  nop                         #  88    0x158975  1      OPC=nop             
  nop                         #  89    0x158976  1      OPC=nop             
  nop                         #  90    0x158977  1      OPC=nop             
  nop                         #  91    0x158978  1      OPC=nop             
                                                                            
.size __do_global_ctors_aux, .-__do_global_ctors_aux

