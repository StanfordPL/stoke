  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev, @function

#! file-offset 0x12e5a0
#! rip-offset  0xee5a0
#! capacity    224 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev:        #        0xee5a0  0      OPC=<label>         
  pushq %r12                                            #  1     0xee5a0  2      OPC=pushq_r64_1     
  movl %esi, %r12d                                      #  2     0xee5a2  3      OPC=movl_r32_r32    
  pushq %rbx                                            #  3     0xee5a5  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                       #  4     0xee5a6  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                  #  5     0xee5a8  3      OPC=leal_r32_m16    
  subl $0x8, %esp                                       #  6     0xee5ab  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  7     0xee5ae  3      OPC=addq_r64_r64    
  movl %r12d, %r12d                                     #  8     0xee5b1  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                              #  9     0xee5b4  4      OPC=movl_r32_m32    
  movl %r12d, %r12d                                     #  10    0xee5b8  3      OPC=movl_r32_r32    
  movl 0xc(%r15,%r12,1), %edx                           #  11    0xee5bb  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  12    0xee5c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                              #  13    0xee5c2  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                       #  14    0xee5c6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                       #  15    0xee5c9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                              #  16    0xee5cb  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                       #  17    0xee5cf  2      OPC=addl_r32_r32    
  movl %eax, %eax                                       #  18    0xee5d1  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                              #  19    0xee5d3  4      OPC=movl_m32_r32    
  nop                                                   #  20    0xee5d7  1      OPC=nop             
  nop                                                   #  21    0xee5d8  1      OPC=nop             
  nop                                                   #  22    0xee5d9  1      OPC=nop             
  nop                                                   #  23    0xee5da  1      OPC=nop             
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev  #  24    0xee5db  5      OPC=callq_label     
  addl $0x4, %r12d                                      #  25    0xee5e0  4      OPC=addl_r32_imm8   
  movl %r12d, %r12d                                     #  26    0xee5e4  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                              #  27    0xee5e7  4      OPC=movl_r32_m32    
  movl %r12d, %r12d                                     #  28    0xee5eb  3      OPC=movl_r32_r32    
  movl 0x4(%r15,%r12,1), %edx                           #  29    0xee5ee  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  30    0xee5f3  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                              #  31    0xee5f5  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                       #  32    0xee5f9  3      OPC=subl_r32_imm8   
  nop                                                   #  33    0xee5fc  1      OPC=nop             
  nop                                                   #  34    0xee5fd  1      OPC=nop             
  nop                                                   #  35    0xee5fe  1      OPC=nop             
  nop                                                   #  36    0xee5ff  1      OPC=nop             
  movl %eax, %eax                                       #  37    0xee600  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                              #  38    0xee602  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  39    0xee606  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)                           #  40    0xee608  9      OPC=movl_m32_imm32  
  addl %ebx, %eax                                       #  41    0xee611  2      OPC=addl_r32_r32    
  movl %eax, %eax                                       #  42    0xee613  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                              #  43    0xee615  4      OPC=movl_m32_r32    
  addl $0x8, %esp                                       #  44    0xee619  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  45    0xee61c  3      OPC=addq_r64_r64    
  popq %rbx                                             #  46    0xee61f  1      OPC=popq_r64_1      
  popq %r12                                             #  47    0xee620  2      OPC=popq_r64_1      
  popq %r11                                             #  48    0xee622  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  49    0xee624  7      OPC=andl_r32_imm32  
  nop                                                   #  50    0xee62b  1      OPC=nop             
  nop                                                   #  51    0xee62c  1      OPC=nop             
  nop                                                   #  52    0xee62d  1      OPC=nop             
  nop                                                   #  53    0xee62e  1      OPC=nop             
  addq %r15, %r11                                       #  54    0xee62f  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  55    0xee632  3      OPC=jmpq_r64        
  nop                                                   #  56    0xee635  1      OPC=nop             
  nop                                                   #  57    0xee636  1      OPC=nop             
  nop                                                   #  58    0xee637  1      OPC=nop             
  nop                                                   #  59    0xee638  1      OPC=nop             
  nop                                                   #  60    0xee639  1      OPC=nop             
  nop                                                   #  61    0xee63a  1      OPC=nop             
  nop                                                   #  62    0xee63b  1      OPC=nop             
  nop                                                   #  63    0xee63c  1      OPC=nop             
  nop                                                   #  64    0xee63d  1      OPC=nop             
  nop                                                   #  65    0xee63e  1      OPC=nop             
  nop                                                   #  66    0xee63f  1      OPC=nop             
  nop                                                   #  67    0xee640  1      OPC=nop             
  nop                                                   #  68    0xee641  1      OPC=nop             
  nop                                                   #  69    0xee642  1      OPC=nop             
  nop                                                   #  70    0xee643  1      OPC=nop             
  nop                                                   #  71    0xee644  1      OPC=nop             
  nop                                                   #  72    0xee645  1      OPC=nop             
  nop                                                   #  73    0xee646  1      OPC=nop             
  addl $0x4, %r12d                                      #  74    0xee647  4      OPC=addl_r32_imm8   
  movl %eax, %edi                                       #  75    0xee64b  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                                     #  76    0xee64d  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %edx                              #  77    0xee650  4      OPC=movl_r32_m32    
  movl %r12d, %r12d                                     #  78    0xee654  3      OPC=movl_r32_r32    
  movl 0x4(%r15,%r12,1), %ecx                           #  79    0xee657  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  80    0xee65c  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rbx,1)                              #  81    0xee65e  4      OPC=movl_m32_r32    
  subl $0xc, %edx                                       #  82    0xee662  3      OPC=subl_r32_imm8   
  xchgw %ax, %ax                                        #  83    0xee665  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                       #  84    0xee667  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                              #  85    0xee669  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                       #  86    0xee66d  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)                           #  87    0xee66f  9      OPC=movl_m32_imm32  
  addl %ebx, %edx                                       #  88    0xee678  2      OPC=addl_r32_r32    
  movl %edx, %edx                                       #  89    0xee67a  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                              #  90    0xee67c  4      OPC=movl_m32_r32    
  xchgw %ax, %ax                                        #  91    0xee680  2      OPC=xchgw_ax_r16    
  callq ._Unwind_Resume                                 #  92    0xee682  5      OPC=callq_label     
                                                                                                     
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev

