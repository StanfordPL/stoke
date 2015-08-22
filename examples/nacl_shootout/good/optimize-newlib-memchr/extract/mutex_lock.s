  .text
  .globl mutex_lock
  .type mutex_lock, @function

#! file-offset 0x6dea0
#! rip-offset  0x2dea0
#! capacity    224 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
.mutex_lock:                      #        0x2dea0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)          #  1     0x2dea0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                 #  2     0x2dea5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)           #  3     0x2dea7  5      OPC=movq_m64_r64    
  subl $0x28, %esp                #  4     0x2deac  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                 #  5     0x2deaf  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                 #  6     0x2deb2  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rbx,1), %eax     #  7     0x2deb4  5      OPC=movl_r32_m32    
  movl %edx, %edx                 #  8     0x2deb9  2      OPC=movl_r32_r32    
  testl %eax, %eax                #  9     0x2debb  2      OPC=testl_r32_r32   
  nop                             #  10    0x2debd  1      OPC=nop             
  nop                             #  11    0x2debe  1      OPC=nop             
  nop                             #  12    0x2debf  1      OPC=nop             
  jne .L_2dee0                    #  13    0x2dec0  2      OPC=jne_label       
  movl %ebx, %edi                 #  14    0x2dec2  2      OPC=movl_r32_r32    
  movq 0x20(%rsp), %r12           #  15    0x2dec4  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %rbx           #  16    0x2dec9  5      OPC=movq_r64_m64    
  addl $0x28, %esp                #  17    0x2dece  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  18    0x2ded1  3      OPC=addq_r64_r64    
  jmpq .mutex_lock_nonrecursive   #  19    0x2ded4  5      OPC=jmpq_label_1    
  nop                             #  20    0x2ded9  1      OPC=nop             
  nop                             #  21    0x2deda  1      OPC=nop             
  nop                             #  22    0x2dedb  1      OPC=nop             
  nop                             #  23    0x2dedc  1      OPC=nop             
  nop                             #  24    0x2dedd  1      OPC=nop             
  nop                             #  25    0x2dede  1      OPC=nop             
  nop                             #  26    0x2dedf  1      OPC=nop             
.L_2dee0:                         #        0x2dee0  0      OPC=<label>         
  movq %rdx, (%rsp)               #  27    0x2dee0  4      OPC=movq_m64_r64    
  movl %esi, 0x8(%rsp)            #  28    0x2dee4  4      OPC=movl_m32_r32    
  nop                             #  29    0x2dee8  1      OPC=nop             
  nop                             #  30    0x2dee9  1      OPC=nop             
  nop                             #  31    0x2deea  1      OPC=nop             
  nop                             #  32    0x2deeb  1      OPC=nop             
  nop                             #  33    0x2deec  1      OPC=nop             
  nop                             #  34    0x2deed  1      OPC=nop             
  nop                             #  35    0x2deee  1      OPC=nop             
  nop                             #  36    0x2deef  1      OPC=nop             
  nop                             #  37    0x2def0  1      OPC=nop             
  nop                             #  38    0x2def1  1      OPC=nop             
  nop                             #  39    0x2def2  1      OPC=nop             
  nop                             #  40    0x2def3  1      OPC=nop             
  nop                             #  41    0x2def4  1      OPC=nop             
  nop                             #  42    0x2def5  1      OPC=nop             
  nop                             #  43    0x2def6  1      OPC=nop             
  nop                             #  44    0x2def7  1      OPC=nop             
  nop                             #  45    0x2def8  1      OPC=nop             
  nop                             #  46    0x2def9  1      OPC=nop             
  nop                             #  47    0x2defa  1      OPC=nop             
  callq .pthread_self             #  48    0x2defb  5      OPC=callq_label     
  movl %eax, %r12d                #  49    0x2df00  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                 #  50    0x2df03  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %eax     #  51    0x2df05  5      OPC=movl_r32_m32    
  movq (%rsp), %rdx               #  52    0x2df0a  4      OPC=movq_r64_m64    
  movl 0x8(%rsp), %esi            #  53    0x2df0e  4      OPC=movl_r32_m32    
  cmpl %r12d, %eax                #  54    0x2df12  3      OPC=cmpl_r32_r32    
  je .L_2df60                     #  55    0x2df15  2      OPC=je_label        
  movl %ebx, %edi                 #  56    0x2df17  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                  #  57    0x2df19  2      OPC=xchgw_ax_r16    
  callq .mutex_lock_nonrecursive  #  58    0x2df1b  5      OPC=callq_label     
  testl %eax, %eax                #  59    0x2df20  2      OPC=testl_r32_r32   
  jne .L_2df40                    #  60    0x2df22  2      OPC=jne_label       
  movl %ebx, %ebx                 #  61    0x2df24  2      OPC=movl_r32_r32    
  movl %r12d, 0x8(%r15,%rbx,1)    #  62    0x2df26  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                 #  63    0x2df2b  2      OPC=movl_r32_r32    
  movl $0x1, 0xc(%r15,%rbx,1)     #  64    0x2df2d  9      OPC=movl_m32_imm32  
  nop                             #  65    0x2df36  1      OPC=nop             
  nop                             #  66    0x2df37  1      OPC=nop             
  nop                             #  67    0x2df38  1      OPC=nop             
  nop                             #  68    0x2df39  1      OPC=nop             
  nop                             #  69    0x2df3a  1      OPC=nop             
  nop                             #  70    0x2df3b  1      OPC=nop             
  nop                             #  71    0x2df3c  1      OPC=nop             
  nop                             #  72    0x2df3d  1      OPC=nop             
  nop                             #  73    0x2df3e  1      OPC=nop             
  nop                             #  74    0x2df3f  1      OPC=nop             
.L_2df40:                         #        0x2df40  0      OPC=<label>         
  movq 0x18(%rsp), %rbx           #  75    0x2df40  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12           #  76    0x2df45  5      OPC=movq_r64_m64    
  addl $0x28, %esp                #  77    0x2df4a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  78    0x2df4d  3      OPC=addq_r64_r64    
  popq %r11                       #  79    0x2df50  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  80    0x2df52  7      OPC=andl_r32_imm32  
  nop                             #  81    0x2df59  1      OPC=nop             
  nop                             #  82    0x2df5a  1      OPC=nop             
  nop                             #  83    0x2df5b  1      OPC=nop             
  nop                             #  84    0x2df5c  1      OPC=nop             
  addq %r15, %r11                 #  85    0x2df5d  3      OPC=addq_r64_r64    
  jmpq %r11                       #  86    0x2df60  3      OPC=jmpq_r64        
  nop                             #  87    0x2df63  1      OPC=nop             
  nop                             #  88    0x2df64  1      OPC=nop             
  nop                             #  89    0x2df65  1      OPC=nop             
  nop                             #  90    0x2df66  1      OPC=nop             
.L_2df60:                         #        0x2df67  0      OPC=<label>         
  movl %ebx, %ebx                 #  91    0x2df67  2      OPC=movl_r32_r32    
  cmpl $0x2, 0x4(%r15,%rbx,1)     #  92    0x2df69  6      OPC=cmpl_m32_imm8   
  movl $0x23, %eax                #  93    0x2df6f  5      OPC=movl_r32_imm32  
  je .L_2df40                     #  94    0x2df74  2      OPC=je_label        
  movl %ebx, %ebx                 #  95    0x2df76  2      OPC=movl_r32_r32    
  addl $0x1, 0xc(%r15,%rbx,1)     #  96    0x2df78  6      OPC=addl_m32_imm8   
  xorb %al, %al                   #  97    0x2df7e  2      OPC=xorb_r8_r8      
  jmpq .L_2df40                   #  98    0x2df80  2      OPC=jmpq_label      
  nop                             #  99    0x2df82  1      OPC=nop             
  nop                             #  100   0x2df83  1      OPC=nop             
  nop                             #  101   0x2df84  1      OPC=nop             
  nop                             #  102   0x2df85  1      OPC=nop             
  nop                             #  103   0x2df86  1      OPC=nop             
                                                                               
.size mutex_lock, .-mutex_lock

