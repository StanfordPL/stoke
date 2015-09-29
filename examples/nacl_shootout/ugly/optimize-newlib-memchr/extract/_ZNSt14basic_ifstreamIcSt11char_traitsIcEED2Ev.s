  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev, @function

#! file-offset 0x12efc0
#! rip-offset  0xeefc0
#! capacity    224 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev:        #        0xeefc0  0      OPC=<label>         
  pushq %r12                                            #  1     0xeefc0  2      OPC=pushq_r64_1     
  movl %esi, %r12d                                      #  2     0xeefc2  3      OPC=movl_r32_r32    
  pushq %rbx                                            #  3     0xeefc5  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                       #  4     0xeefc6  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                  #  5     0xeefc8  3      OPC=leal_r32_m16    
  subl $0x8, %esp                                       #  6     0xeefcb  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  7     0xeefce  3      OPC=addq_r64_r64    
  movl %r12d, %r12d                                     #  8     0xeefd1  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                              #  9     0xeefd4  4      OPC=movl_r32_m32    
  movl %r12d, %r12d                                     #  10    0xeefd8  3      OPC=movl_r32_r32    
  movl 0xc(%r15,%r12,1), %edx                           #  11    0xeefdb  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  12    0xeefe0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                              #  13    0xeefe2  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                       #  14    0xeefe6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                       #  15    0xeefe9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                              #  16    0xeefeb  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                       #  17    0xeefef  2      OPC=addl_r32_r32    
  movl %eax, %eax                                       #  18    0xeeff1  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                              #  19    0xeeff3  4      OPC=movl_m32_r32    
  nop                                                   #  20    0xeeff7  1      OPC=nop             
  nop                                                   #  21    0xeeff8  1      OPC=nop             
  nop                                                   #  22    0xeeff9  1      OPC=nop             
  nop                                                   #  23    0xeeffa  1      OPC=nop             
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev  #  24    0xeeffb  5      OPC=callq_label     
  addl $0x4, %r12d                                      #  25    0xef000  4      OPC=addl_r32_imm8   
  movl %r12d, %r12d                                     #  26    0xef004  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                              #  27    0xef007  4      OPC=movl_r32_m32    
  movl %r12d, %r12d                                     #  28    0xef00b  3      OPC=movl_r32_r32    
  movl 0x4(%r15,%r12,1), %edx                           #  29    0xef00e  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  30    0xef013  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                              #  31    0xef015  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                       #  32    0xef019  3      OPC=subl_r32_imm8   
  nop                                                   #  33    0xef01c  1      OPC=nop             
  nop                                                   #  34    0xef01d  1      OPC=nop             
  nop                                                   #  35    0xef01e  1      OPC=nop             
  nop                                                   #  36    0xef01f  1      OPC=nop             
  movl %eax, %eax                                       #  37    0xef020  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                              #  38    0xef022  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  39    0xef026  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)                           #  40    0xef028  9      OPC=movl_m32_imm32  
  addl %ebx, %eax                                       #  41    0xef031  2      OPC=addl_r32_r32    
  movl %eax, %eax                                       #  42    0xef033  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                              #  43    0xef035  4      OPC=movl_m32_r32    
  addl $0x8, %esp                                       #  44    0xef039  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  45    0xef03c  3      OPC=addq_r64_r64    
  popq %rbx                                             #  46    0xef03f  1      OPC=popq_r64_1      
  popq %r12                                             #  47    0xef040  2      OPC=popq_r64_1      
  popq %r11                                             #  48    0xef042  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  49    0xef044  7      OPC=andl_r32_imm32  
  nop                                                   #  50    0xef04b  1      OPC=nop             
  nop                                                   #  51    0xef04c  1      OPC=nop             
  nop                                                   #  52    0xef04d  1      OPC=nop             
  nop                                                   #  53    0xef04e  1      OPC=nop             
  addq %r15, %r11                                       #  54    0xef04f  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  55    0xef052  3      OPC=jmpq_r64        
  nop                                                   #  56    0xef055  1      OPC=nop             
  nop                                                   #  57    0xef056  1      OPC=nop             
  nop                                                   #  58    0xef057  1      OPC=nop             
  nop                                                   #  59    0xef058  1      OPC=nop             
  nop                                                   #  60    0xef059  1      OPC=nop             
  nop                                                   #  61    0xef05a  1      OPC=nop             
  nop                                                   #  62    0xef05b  1      OPC=nop             
  nop                                                   #  63    0xef05c  1      OPC=nop             
  nop                                                   #  64    0xef05d  1      OPC=nop             
  nop                                                   #  65    0xef05e  1      OPC=nop             
  nop                                                   #  66    0xef05f  1      OPC=nop             
  nop                                                   #  67    0xef060  1      OPC=nop             
  nop                                                   #  68    0xef061  1      OPC=nop             
  nop                                                   #  69    0xef062  1      OPC=nop             
  nop                                                   #  70    0xef063  1      OPC=nop             
  nop                                                   #  71    0xef064  1      OPC=nop             
  nop                                                   #  72    0xef065  1      OPC=nop             
  nop                                                   #  73    0xef066  1      OPC=nop             
  addl $0x4, %r12d                                      #  74    0xef067  4      OPC=addl_r32_imm8   
  movl %eax, %edi                                       #  75    0xef06b  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                                     #  76    0xef06d  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %edx                              #  77    0xef070  4      OPC=movl_r32_m32    
  movl %r12d, %r12d                                     #  78    0xef074  3      OPC=movl_r32_r32    
  movl 0x4(%r15,%r12,1), %ecx                           #  79    0xef077  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  80    0xef07c  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rbx,1)                              #  81    0xef07e  4      OPC=movl_m32_r32    
  subl $0xc, %edx                                       #  82    0xef082  3      OPC=subl_r32_imm8   
  xchgw %ax, %ax                                        #  83    0xef085  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                       #  84    0xef087  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                              #  85    0xef089  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  86    0xef08d  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)                           #  87    0xef08f  9      OPC=movl_m32_imm32  
  addl %ebx, %edx                                       #  88    0xef098  2      OPC=addl_r32_r32    
  movl %edx, %edx                                       #  89    0xef09a  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                              #  90    0xef09c  4      OPC=movl_m32_r32    
  xchgw %ax, %ax                                        #  91    0xef0a0  2      OPC=xchgw_ax_r16    
  callq ._Unwind_Resume                                 #  92    0xef0a2  5      OPC=callq_label     
                                                                                                     
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev

