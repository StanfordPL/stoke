  .text
  .globl _ZNSs5eraseEjj
  .type _ZNSs5eraseEjj, @function

#! file-offset 0xeec40
#! rip-offset  0xaec40
#! capacity    128 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs5eraseEjj:                        #        0xaec40  0      OPC=<label>         
  pushq %rbx                            #  1     0xaec40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  2     0xaec41  2      OPC=movl_r32_r32    
  movl %edx, %ecx                       #  3     0xaec43  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                       #  4     0xaec45  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax              #  5     0xaec47  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xaec4b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  7     0xaec4e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  8     0xaec50  4      OPC=movl_r32_m32    
  cmpl %eax, %esi                       #  9     0xaec54  2      OPC=cmpl_r32_r32    
  ja .L_aeca0                           #  10    0xaec56  2      OPC=ja_label        
  movl %eax, %edx                       #  11    0xaec58  2      OPC=movl_r32_r32    
  movl %ebx, %edi                       #  12    0xaec5a  2      OPC=movl_r32_r32    
  subl %esi, %edx                       #  13    0xaec5c  2      OPC=subl_r32_r32    
  cmpl %ecx, %edx                       #  14    0xaec5e  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %edx                     #  15    0xaec60  3      OPC=cmoval_r32_r32  
  xorl %ecx, %ecx                       #  16    0xaec63  2      OPC=xorl_r32_r32    
  nop                                   #  17    0xaec65  1      OPC=nop             
  nop                                   #  18    0xaec66  1      OPC=nop             
  nop                                   #  19    0xaec67  1      OPC=nop             
  nop                                   #  20    0xaec68  1      OPC=nop             
  nop                                   #  21    0xaec69  1      OPC=nop             
  nop                                   #  22    0xaec6a  1      OPC=nop             
  nop                                   #  23    0xaec6b  1      OPC=nop             
  nop                                   #  24    0xaec6c  1      OPC=nop             
  nop                                   #  25    0xaec6d  1      OPC=nop             
  nop                                   #  26    0xaec6e  1      OPC=nop             
  nop                                   #  27    0xaec6f  1      OPC=nop             
  nop                                   #  28    0xaec70  1      OPC=nop             
  nop                                   #  29    0xaec71  1      OPC=nop             
  nop                                   #  30    0xaec72  1      OPC=nop             
  nop                                   #  31    0xaec73  1      OPC=nop             
  nop                                   #  32    0xaec74  1      OPC=nop             
  nop                                   #  33    0xaec75  1      OPC=nop             
  nop                                   #  34    0xaec76  1      OPC=nop             
  nop                                   #  35    0xaec77  1      OPC=nop             
  nop                                   #  36    0xaec78  1      OPC=nop             
  nop                                   #  37    0xaec79  1      OPC=nop             
  nop                                   #  38    0xaec7a  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj            #  39    0xaec7b  5      OPC=callq_label     
  movl %ebx, %eax                       #  40    0xaec80  2      OPC=movl_r32_r32    
  popq %rbx                             #  41    0xaec82  1      OPC=popq_r64_1      
  popq %r11                             #  42    0xaec83  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  43    0xaec85  7      OPC=andl_r32_imm32  
  nop                                   #  44    0xaec8c  1      OPC=nop             
  nop                                   #  45    0xaec8d  1      OPC=nop             
  nop                                   #  46    0xaec8e  1      OPC=nop             
  nop                                   #  47    0xaec8f  1      OPC=nop             
  addq %r15, %r11                       #  48    0xaec90  3      OPC=addq_r64_r64    
  jmpq %r11                             #  49    0xaec93  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  50    0xaec96  2      OPC=xchgw_ax_r16    
  nop                                   #  51    0xaec98  1      OPC=nop             
  nop                                   #  52    0xaec99  1      OPC=nop             
  nop                                   #  53    0xaec9a  1      OPC=nop             
  nop                                   #  54    0xaec9b  1      OPC=nop             
  nop                                   #  55    0xaec9c  1      OPC=nop             
  nop                                   #  56    0xaec9d  1      OPC=nop             
  nop                                   #  57    0xaec9e  1      OPC=nop             
  nop                                   #  58    0xaec9f  1      OPC=nop             
  nop                                   #  59    0xaeca0  1      OPC=nop             
  nop                                   #  60    0xaeca1  1      OPC=nop             
  nop                                   #  61    0xaeca2  1      OPC=nop             
  nop                                   #  62    0xaeca3  1      OPC=nop             
  nop                                   #  63    0xaeca4  1      OPC=nop             
  nop                                   #  64    0xaeca5  1      OPC=nop             
  nop                                   #  65    0xaeca6  1      OPC=nop             
.L_aeca0:                               #        0xaeca7  0      OPC=<label>         
  movl $0x1003a8e6, %edi                #  66    0xaeca7  5      OPC=movl_r32_imm32  
  nop                                   #  67    0xaecac  1      OPC=nop             
  nop                                   #  68    0xaecad  1      OPC=nop             
  nop                                   #  69    0xaecae  1      OPC=nop             
  nop                                   #  70    0xaecaf  1      OPC=nop             
  nop                                   #  71    0xaecb0  1      OPC=nop             
  nop                                   #  72    0xaecb1  1      OPC=nop             
  nop                                   #  73    0xaecb2  1      OPC=nop             
  nop                                   #  74    0xaecb3  1      OPC=nop             
  nop                                   #  75    0xaecb4  1      OPC=nop             
  nop                                   #  76    0xaecb5  1      OPC=nop             
  nop                                   #  77    0xaecb6  1      OPC=nop             
  nop                                   #  78    0xaecb7  1      OPC=nop             
  nop                                   #  79    0xaecb8  1      OPC=nop             
  nop                                   #  80    0xaecb9  1      OPC=nop             
  nop                                   #  81    0xaecba  1      OPC=nop             
  nop                                   #  82    0xaecbb  1      OPC=nop             
  nop                                   #  83    0xaecbc  1      OPC=nop             
  nop                                   #  84    0xaecbd  1      OPC=nop             
  nop                                   #  85    0xaecbe  1      OPC=nop             
  nop                                   #  86    0xaecbf  1      OPC=nop             
  nop                                   #  87    0xaecc0  1      OPC=nop             
  nop                                   #  88    0xaecc1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  89    0xaecc2  5      OPC=callq_label     
                                                                                     
.size _ZNSs5eraseEjj, .-_ZNSs5eraseEjj

