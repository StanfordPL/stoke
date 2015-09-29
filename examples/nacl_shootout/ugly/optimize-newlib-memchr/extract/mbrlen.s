  .text
  .globl mbrlen
  .type mbrlen, @function

#! file-offset 0x1988e0
#! rip-offset  0x1588e0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.mbrlen:                    #        0x1588e0  0      OPC=<label>         
  pushq %rbx                #  1     0x1588e0  1      OPC=pushq_r64_1     
  movl %edx, %ecx           #  2     0x1588e1  2      OPC=movl_r32_r32    
  movl %edi, %ebx           #  3     0x1588e3  2      OPC=movl_r32_r32    
  subl $0x10, %esp          #  4     0x1588e5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  5     0x1588e8  3      OPC=addq_r64_r64    
  testq %rcx, %rcx          #  6     0x1588eb  3      OPC=testq_r64_r64   
  je .L_158920              #  7     0x1588ee  2      OPC=je_label        
  movl %esi, %edx           #  8     0x1588f0  2      OPC=movl_r32_r32    
  addl $0x10, %esp          #  9     0x1588f2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  10    0x1588f5  3      OPC=addq_r64_r64    
  movl %ebx, %esi           #  11    0x1588f8  2      OPC=movl_r32_r32    
  popq %rbx                 #  12    0x1588fa  1      OPC=popq_r64_1      
  xorl %edi, %edi           #  13    0x1588fb  2      OPC=xorl_r32_r32    
  nop                       #  14    0x1588fd  1      OPC=nop             
  nop                       #  15    0x1588fe  1      OPC=nop             
  nop                       #  16    0x1588ff  1      OPC=nop             
  jmpq .mbrtowc             #  17    0x158900  5      OPC=jmpq_label_1    
  nop                       #  18    0x158905  1      OPC=nop             
  nop                       #  19    0x158906  1      OPC=nop             
  nop                       #  20    0x158907  1      OPC=nop             
  nop                       #  21    0x158908  1      OPC=nop             
  nop                       #  22    0x158909  1      OPC=nop             
  nop                       #  23    0x15890a  1      OPC=nop             
  nop                       #  24    0x15890b  1      OPC=nop             
  nop                       #  25    0x15890c  1      OPC=nop             
  nop                       #  26    0x15890d  1      OPC=nop             
  nop                       #  27    0x15890e  1      OPC=nop             
  nop                       #  28    0x15890f  1      OPC=nop             
  nop                       #  29    0x158910  1      OPC=nop             
  nop                       #  30    0x158911  1      OPC=nop             
  nop                       #  31    0x158912  1      OPC=nop             
  nop                       #  32    0x158913  1      OPC=nop             
  nop                       #  33    0x158914  1      OPC=nop             
  nop                       #  34    0x158915  1      OPC=nop             
  nop                       #  35    0x158916  1      OPC=nop             
  nop                       #  36    0x158917  1      OPC=nop             
  nop                       #  37    0x158918  1      OPC=nop             
  nop                       #  38    0x158919  1      OPC=nop             
  nop                       #  39    0x15891a  1      OPC=nop             
  nop                       #  40    0x15891b  1      OPC=nop             
  nop                       #  41    0x15891c  1      OPC=nop             
  nop                       #  42    0x15891d  1      OPC=nop             
  nop                       #  43    0x15891e  1      OPC=nop             
  nop                       #  44    0x15891f  1      OPC=nop             
.L_158920:                  #        0x158920  0      OPC=<label>         
  movl %esi, 0x8(%rsp)      #  45    0x158920  4      OPC=movl_m32_r32    
  nop                       #  46    0x158924  1      OPC=nop             
  nop                       #  47    0x158925  1      OPC=nop             
  nop                       #  48    0x158926  1      OPC=nop             
  nop                       #  49    0x158927  1      OPC=nop             
  nop                       #  50    0x158928  1      OPC=nop             
  nop                       #  51    0x158929  1      OPC=nop             
  nop                       #  52    0x15892a  1      OPC=nop             
  nop                       #  53    0x15892b  1      OPC=nop             
  nop                       #  54    0x15892c  1      OPC=nop             
  nop                       #  55    0x15892d  1      OPC=nop             
  nop                       #  56    0x15892e  1      OPC=nop             
  nop                       #  57    0x15892f  1      OPC=nop             
  nop                       #  58    0x158930  1      OPC=nop             
  nop                       #  59    0x158931  1      OPC=nop             
  nop                       #  60    0x158932  1      OPC=nop             
  nop                       #  61    0x158933  1      OPC=nop             
  nop                       #  62    0x158934  1      OPC=nop             
  nop                       #  63    0x158935  1      OPC=nop             
  nop                       #  64    0x158936  1      OPC=nop             
  nop                       #  65    0x158937  1      OPC=nop             
  nop                       #  66    0x158938  1      OPC=nop             
  nop                       #  67    0x158939  1      OPC=nop             
  nop                       #  68    0x15893a  1      OPC=nop             
  callq .__nacl_read_tp     #  69    0x15893b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax   #  70    0x158940  7      OPC=leaq_r64_m16    
  movl 0x8(%rsp), %esi      #  71    0x158947  4      OPC=movl_r32_m32    
  xorl %edi, %edi           #  72    0x15894b  2      OPC=xorl_r32_r32    
  movl %esi, %edx           #  73    0x15894d  2      OPC=movl_r32_r32    
  movl %ebx, %esi           #  74    0x15894f  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  75    0x158951  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx  #  76    0x158953  4      OPC=movl_r32_m32    
  addl $0x10, %esp          #  77    0x158957  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  78    0x15895a  3      OPC=addq_r64_r64    
  popq %rbx                 #  79    0x15895d  1      OPC=popq_r64_1      
  xchgw %ax, %ax            #  80    0x15895e  2      OPC=xchgw_ax_r16    
  addl $0xfc, %ecx          #  81    0x158960  6      OPC=addl_r32_imm32  
  jmpq .mbrtowc             #  82    0x158966  5      OPC=jmpq_label_1    
  nop                       #  83    0x15896b  1      OPC=nop             
  nop                       #  84    0x15896c  1      OPC=nop             
  nop                       #  85    0x15896d  1      OPC=nop             
  nop                       #  86    0x15896e  1      OPC=nop             
  nop                       #  87    0x15896f  1      OPC=nop             
  nop                       #  88    0x158970  1      OPC=nop             
  nop                       #  89    0x158971  1      OPC=nop             
  nop                       #  90    0x158972  1      OPC=nop             
  nop                       #  91    0x158973  1      OPC=nop             
  nop                       #  92    0x158974  1      OPC=nop             
  nop                       #  93    0x158975  1      OPC=nop             
  nop                       #  94    0x158976  1      OPC=nop             
  nop                       #  95    0x158977  1      OPC=nop             
  nop                       #  96    0x158978  1      OPC=nop             
  nop                       #  97    0x158979  1      OPC=nop             
  nop                       #  98    0x15897a  1      OPC=nop             
  nop                       #  99    0x15897b  1      OPC=nop             
  nop                       #  100   0x15897c  1      OPC=nop             
  nop                       #  101   0x15897d  1      OPC=nop             
  nop                       #  102   0x15897e  1      OPC=nop             
  nop                       #  103   0x15897f  1      OPC=nop             
                                                                          
.size mbrlen, .-mbrlen

