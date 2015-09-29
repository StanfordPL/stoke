  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E, @function

#! file-offset 0xaef40
#! rip-offset  0x6ef40
#! capacity    160 bytes

# Text                                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E:         #        0x6ef40  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                           #  1     0x6ef40  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                                  #  2     0x6ef45  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                            #  3     0x6ef47  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                 #  4     0x6ef4c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                  #  5     0x6ef4f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                  #  6     0x6ef52  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                         #  7     0x6ef54  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                                                 #  8     0x6ef58  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                                                  #  9     0x6ef5b  3      OPC=subl_r32_imm8   
  xchgw %ax, %ax                                                                   #  10    0x6ef5e  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                                                  #  11    0x6ef60  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                         #  12    0x6ef62  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                                                  #  13    0x6ef66  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                                  #  14    0x6ef68  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                                                     #  15    0x6ef6a  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                                 #  16    0x6ef72  3      OPC=testq_r64_r64   
  je .L_6efc0                                                                      #  17    0x6ef75  2      OPC=je_label        
  movl %edi, %edi                                                                  #  18    0x6ef77  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                         #  19    0x6ef79  4      OPC=movl_r32_m32    
  nop                                                                              #  20    0x6ef7d  1      OPC=nop             
  nop                                                                              #  21    0x6ef7e  1      OPC=nop             
  nop                                                                              #  22    0x6ef7f  1      OPC=nop             
  movl $0xa, %esi                                                                  #  23    0x6ef80  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                                                  #  24    0x6ef85  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                                     #  25    0x6ef87  5      OPC=movl_r32_m32    
  nop                                                                              #  26    0x6ef8c  1      OPC=nop             
  nop                                                                              #  27    0x6ef8d  1      OPC=nop             
  nop                                                                              #  28    0x6ef8e  1      OPC=nop             
  nop                                                                              #  29    0x6ef8f  1      OPC=nop             
  nop                                                                              #  30    0x6ef90  1      OPC=nop             
  nop                                                                              #  31    0x6ef91  1      OPC=nop             
  nop                                                                              #  32    0x6ef92  1      OPC=nop             
  nop                                                                              #  33    0x6ef93  1      OPC=nop             
  nop                                                                              #  34    0x6ef94  1      OPC=nop             
  nop                                                                              #  35    0x6ef95  1      OPC=nop             
  nop                                                                              #  36    0x6ef96  1      OPC=nop             
  nop                                                                              #  37    0x6ef97  1      OPC=nop             
  andl $0xffffffe0, %eax                                                           #  38    0x6ef98  6      OPC=andl_r32_imm32  
  nop                                                                              #  39    0x6ef9e  1      OPC=nop             
  nop                                                                              #  40    0x6ef9f  1      OPC=nop             
  nop                                                                              #  41    0x6efa0  1      OPC=nop             
  addq %r15, %rax                                                                  #  42    0x6efa1  3      OPC=addq_r64_r64    
  callq %rax                                                                       #  43    0x6efa4  2      OPC=callq_r64       
  movl %r12d, %esi                                                                 #  44    0x6efa6  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                  #  45    0x6efa9  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                                            #  46    0x6efab  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                             #  47    0x6efb0  5      OPC=movq_r64_m64    
  movl %eax, %edx                                                                  #  48    0x6efb5  2      OPC=movl_r32_r32    
  addl $0x18, %esp                                                                 #  49    0x6efb7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                  #  50    0x6efba  3      OPC=addq_r64_r64    
  jmpq ._ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_Ew  #  51    0x6efbd  5      OPC=jmpq_label_1    
  nop                                                                              #  52    0x6efc2  1      OPC=nop             
  nop                                                                              #  53    0x6efc3  1      OPC=nop             
  nop                                                                              #  54    0x6efc4  1      OPC=nop             
  nop                                                                              #  55    0x6efc5  1      OPC=nop             
.L_6efc0:                                                                          #        0x6efc6  0      OPC=<label>         
  nop                                                                              #  56    0x6efc6  1      OPC=nop             
  nop                                                                              #  57    0x6efc7  1      OPC=nop             
  nop                                                                              #  58    0x6efc8  1      OPC=nop             
  nop                                                                              #  59    0x6efc9  1      OPC=nop             
  nop                                                                              #  60    0x6efca  1      OPC=nop             
  nop                                                                              #  61    0x6efcb  1      OPC=nop             
  nop                                                                              #  62    0x6efcc  1      OPC=nop             
  nop                                                                              #  63    0x6efcd  1      OPC=nop             
  nop                                                                              #  64    0x6efce  1      OPC=nop             
  nop                                                                              #  65    0x6efcf  1      OPC=nop             
  nop                                                                              #  66    0x6efd0  1      OPC=nop             
  nop                                                                              #  67    0x6efd1  1      OPC=nop             
  nop                                                                              #  68    0x6efd2  1      OPC=nop             
  nop                                                                              #  69    0x6efd3  1      OPC=nop             
  nop                                                                              #  70    0x6efd4  1      OPC=nop             
  nop                                                                              #  71    0x6efd5  1      OPC=nop             
  nop                                                                              #  72    0x6efd6  1      OPC=nop             
  nop                                                                              #  73    0x6efd7  1      OPC=nop             
  nop                                                                              #  74    0x6efd8  1      OPC=nop             
  nop                                                                              #  75    0x6efd9  1      OPC=nop             
  nop                                                                              #  76    0x6efda  1      OPC=nop             
  nop                                                                              #  77    0x6efdb  1      OPC=nop             
  nop                                                                              #  78    0x6efdc  1      OPC=nop             
  nop                                                                              #  79    0x6efdd  1      OPC=nop             
  nop                                                                              #  80    0x6efde  1      OPC=nop             
  nop                                                                              #  81    0x6efdf  1      OPC=nop             
  nop                                                                              #  82    0x6efe0  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                                                   #  83    0x6efe1  5      OPC=callq_label     
                                                                                                                                
.size _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E

