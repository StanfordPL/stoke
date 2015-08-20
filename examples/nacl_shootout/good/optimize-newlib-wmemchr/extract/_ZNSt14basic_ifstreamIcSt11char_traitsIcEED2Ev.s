  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev, @function

#! file-offset 0x12e8a0
#! rip-offset  0xee8a0
#! capacity    224 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev:        #        0xee8a0  0      OPC=<label>         
  pushq %r12                                            #  1     0xee8a0  2      OPC=pushq_r64_1     
  movl %esi, %r12d                                      #  2     0xee8a2  3      OPC=movl_r32_r32    
  pushq %rbx                                            #  3     0xee8a5  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                       #  4     0xee8a6  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                  #  5     0xee8a8  3      OPC=leal_r32_m16    
  subl $0x8, %esp                                       #  6     0xee8ab  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  7     0xee8ae  3      OPC=addq_r64_r64    
  movl %r12d, %r12d                                     #  8     0xee8b1  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                              #  9     0xee8b4  4      OPC=movl_r32_m32    
  movl %r12d, %r12d                                     #  10    0xee8b8  3      OPC=movl_r32_r32    
  movl 0xc(%r15,%r12,1), %edx                           #  11    0xee8bb  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  12    0xee8c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                              #  13    0xee8c2  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                       #  14    0xee8c6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                       #  15    0xee8c9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                              #  16    0xee8cb  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                       #  17    0xee8cf  2      OPC=addl_r32_r32    
  movl %eax, %eax                                       #  18    0xee8d1  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                              #  19    0xee8d3  4      OPC=movl_m32_r32    
  nop                                                   #  20    0xee8d7  1      OPC=nop             
  nop                                                   #  21    0xee8d8  1      OPC=nop             
  nop                                                   #  22    0xee8d9  1      OPC=nop             
  nop                                                   #  23    0xee8da  1      OPC=nop             
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev  #  24    0xee8db  5      OPC=callq_label     
  addl $0x4, %r12d                                      #  25    0xee8e0  4      OPC=addl_r32_imm8   
  movl %r12d, %r12d                                     #  26    0xee8e4  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                              #  27    0xee8e7  4      OPC=movl_r32_m32    
  movl %r12d, %r12d                                     #  28    0xee8eb  3      OPC=movl_r32_r32    
  movl 0x4(%r15,%r12,1), %edx                           #  29    0xee8ee  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  30    0xee8f3  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                              #  31    0xee8f5  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                       #  32    0xee8f9  3      OPC=subl_r32_imm8   
  nop                                                   #  33    0xee8fc  1      OPC=nop             
  nop                                                   #  34    0xee8fd  1      OPC=nop             
  nop                                                   #  35    0xee8fe  1      OPC=nop             
  nop                                                   #  36    0xee8ff  1      OPC=nop             
  movl %eax, %eax                                       #  37    0xee900  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                              #  38    0xee902  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  39    0xee906  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)                           #  40    0xee908  9      OPC=movl_m32_imm32  
  addl %ebx, %eax                                       #  41    0xee911  2      OPC=addl_r32_r32    
  movl %eax, %eax                                       #  42    0xee913  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                              #  43    0xee915  4      OPC=movl_m32_r32    
  addl $0x8, %esp                                       #  44    0xee919  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  45    0xee91c  3      OPC=addq_r64_r64    
  popq %rbx                                             #  46    0xee91f  1      OPC=popq_r64_1      
  popq %r12                                             #  47    0xee920  2      OPC=popq_r64_1      
  popq %r11                                             #  48    0xee922  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  49    0xee924  7      OPC=andl_r32_imm32  
  nop                                                   #  50    0xee92b  1      OPC=nop             
  nop                                                   #  51    0xee92c  1      OPC=nop             
  nop                                                   #  52    0xee92d  1      OPC=nop             
  nop                                                   #  53    0xee92e  1      OPC=nop             
  addq %r15, %r11                                       #  54    0xee92f  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  55    0xee932  3      OPC=jmpq_r64        
  nop                                                   #  56    0xee935  1      OPC=nop             
  nop                                                   #  57    0xee936  1      OPC=nop             
  nop                                                   #  58    0xee937  1      OPC=nop             
  nop                                                   #  59    0xee938  1      OPC=nop             
  nop                                                   #  60    0xee939  1      OPC=nop             
  nop                                                   #  61    0xee93a  1      OPC=nop             
  nop                                                   #  62    0xee93b  1      OPC=nop             
  nop                                                   #  63    0xee93c  1      OPC=nop             
  nop                                                   #  64    0xee93d  1      OPC=nop             
  nop                                                   #  65    0xee93e  1      OPC=nop             
  nop                                                   #  66    0xee93f  1      OPC=nop             
  nop                                                   #  67    0xee940  1      OPC=nop             
  nop                                                   #  68    0xee941  1      OPC=nop             
  nop                                                   #  69    0xee942  1      OPC=nop             
  nop                                                   #  70    0xee943  1      OPC=nop             
  nop                                                   #  71    0xee944  1      OPC=nop             
  nop                                                   #  72    0xee945  1      OPC=nop             
  nop                                                   #  73    0xee946  1      OPC=nop             
  addl $0x4, %r12d                                      #  74    0xee947  4      OPC=addl_r32_imm8   
  movl %eax, %edi                                       #  75    0xee94b  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                                     #  76    0xee94d  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %edx                              #  77    0xee950  4      OPC=movl_r32_m32    
  movl %r12d, %r12d                                     #  78    0xee954  3      OPC=movl_r32_r32    
  movl 0x4(%r15,%r12,1), %ecx                           #  79    0xee957  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  80    0xee95c  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rbx,1)                              #  81    0xee95e  4      OPC=movl_m32_r32    
  subl $0xc, %edx                                       #  82    0xee962  3      OPC=subl_r32_imm8   
  xchgw %ax, %ax                                        #  83    0xee965  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                       #  84    0xee967  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                              #  85    0xee969  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  86    0xee96d  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)                           #  87    0xee96f  9      OPC=movl_m32_imm32  
  addl %ebx, %edx                                       #  88    0xee978  2      OPC=addl_r32_r32    
  movl %edx, %edx                                       #  89    0xee97a  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                              #  90    0xee97c  4      OPC=movl_m32_r32    
  xchgw %ax, %ax                                        #  91    0xee980  2      OPC=xchgw_ax_r16    
  callq ._Unwind_Resume                                 #  92    0xee982  5      OPC=callq_label     
                                                                                                     
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev

