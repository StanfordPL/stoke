  .text
  .globl _ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev
  .type _ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev, @function

#! file-offset 0x13b860
#! rip-offset  0xfb860
#! capacity    160 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev:  #        0xfb860  0      OPC=<label>         
  movl 0xff42d86(%rip), %edx                      #  1     0xfb860  6      OPC=movl_r32_m32    
  pushq %rbx                                      #  2     0xfb866  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                 #  3     0xfb867  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %eax                            #  4     0xfb869  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                                 #  5     0xfb86c  2      OPC=movl_r32_r32    
  movl $0x1003e5c0, 0x8(%r15,%rbx,1)              #  6     0xfb86e  9      OPC=movl_m32_imm32  
  leal 0xc(%rbx), %edi                            #  7     0xfb877  3      OPC=leal_r32_m16    
  movl %eax, %eax                                 #  8     0xfb87a  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  9     0xfb87c  4      OPC=movl_m32_r32    
  subl $0xc, %edx                                 #  10    0xfb880  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                 #  11    0xfb883  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax                        #  12    0xfb885  4      OPC=addl_r32_m32    
  movl 0xff42d61(%rip), %edx                      #  13    0xfb889  6      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  14    0xfb88f  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  15    0xfb891  4      OPC=movl_m32_r32    
  movl 0xff42d49(%rip), %eax                      #  16    0xfb895  6      OPC=movl_r32_m32    
  nop                                             #  17    0xfb89b  1      OPC=nop             
  nop                                             #  18    0xfb89c  1      OPC=nop             
  nop                                             #  19    0xfb89d  1      OPC=nop             
  nop                                             #  20    0xfb89e  1      OPC=nop             
  nop                                             #  21    0xfb89f  1      OPC=nop             
  movl 0xff42d42(%rip), %edx                      #  22    0xfb8a0  6      OPC=movl_r32_m32    
  movl %ebx, %ebx                                 #  23    0xfb8a6  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                        #  24    0xfb8a8  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                 #  25    0xfb8ac  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                 #  26    0xfb8af  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                        #  27    0xfb8b1  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                 #  28    0xfb8b5  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)                     #  29    0xfb8b7  9      OPC=movl_m32_imm32  
  addl %ebx, %eax                                 #  30    0xfb8c0  2      OPC=addl_r32_r32    
  movl %eax, %eax                                 #  31    0xfb8c2  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  32    0xfb8c4  4      OPC=movl_m32_r32    
  movl %edi, %edi                                 #  33    0xfb8c8  2      OPC=movl_r32_r32    
  movl $0x1003a748, (%r15,%rdi,1)                 #  34    0xfb8ca  8      OPC=movl_m32_imm32  
  nop                                             #  35    0xfb8d2  1      OPC=nop             
  nop                                             #  36    0xfb8d3  1      OPC=nop             
  nop                                             #  37    0xfb8d4  1      OPC=nop             
  nop                                             #  38    0xfb8d5  1      OPC=nop             
  nop                                             #  39    0xfb8d6  1      OPC=nop             
  nop                                             #  40    0xfb8d7  1      OPC=nop             
  nop                                             #  41    0xfb8d8  1      OPC=nop             
  nop                                             #  42    0xfb8d9  1      OPC=nop             
  nop                                             #  43    0xfb8da  1      OPC=nop             
  callq ._ZNSt8ios_baseD2Ev                       #  44    0xfb8db  5      OPC=callq_label     
  movl %ebx, %edi                                 #  45    0xfb8e0  2      OPC=movl_r32_r32    
  popq %rbx                                       #  46    0xfb8e2  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                    #  47    0xfb8e3  5      OPC=jmpq_label_1    
  nop                                             #  48    0xfb8e8  1      OPC=nop             
  nop                                             #  49    0xfb8e9  1      OPC=nop             
  nop                                             #  50    0xfb8ea  1      OPC=nop             
  nop                                             #  51    0xfb8eb  1      OPC=nop             
  nop                                             #  52    0xfb8ec  1      OPC=nop             
  nop                                             #  53    0xfb8ed  1      OPC=nop             
  nop                                             #  54    0xfb8ee  1      OPC=nop             
  nop                                             #  55    0xfb8ef  1      OPC=nop             
  nop                                             #  56    0xfb8f0  1      OPC=nop             
  nop                                             #  57    0xfb8f1  1      OPC=nop             
  nop                                             #  58    0xfb8f2  1      OPC=nop             
  nop                                             #  59    0xfb8f3  1      OPC=nop             
  nop                                             #  60    0xfb8f4  1      OPC=nop             
  nop                                             #  61    0xfb8f5  1      OPC=nop             
  nop                                             #  62    0xfb8f6  1      OPC=nop             
  nop                                             #  63    0xfb8f7  1      OPC=nop             
  nop                                             #  64    0xfb8f8  1      OPC=nop             
  nop                                             #  65    0xfb8f9  1      OPC=nop             
  nop                                             #  66    0xfb8fa  1      OPC=nop             
  nop                                             #  67    0xfb8fb  1      OPC=nop             
  nop                                             #  68    0xfb8fc  1      OPC=nop             
  nop                                             #  69    0xfb8fd  1      OPC=nop             
  nop                                             #  70    0xfb8fe  1      OPC=nop             
  nop                                             #  71    0xfb8ff  1      OPC=nop             
                                                                                               
.size _ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev, .-_ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev

