  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEaSEw
  .type _ZNSbIwSt11char_traitsIwESaIwEEaSEw, @function

#! file-offset 0x119ba0
#! rip-offset  0xd9ba0
#! capacity    96 bytes

# Text                                                         #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEaSEw:                          #        0xd9ba0  0      OPC=<label>         
  pushq %rbx                                                   #  1     0xd9ba0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                              #  2     0xd9ba1  2      OPC=movl_r32_r32    
  movl %esi, %r8d                                              #  3     0xd9ba3  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                              #  4     0xd9ba6  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                     #  5     0xd9ba8  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                              #  6     0xd9bac  2      OPC=movl_r32_r32    
  movl $0x1, %ecx                                              #  7     0xd9bae  5      OPC=movl_r32_imm32  
  xorl %esi, %esi                                              #  8     0xd9bb3  2      OPC=xorl_r32_r32    
  subl $0xc, %eax                                              #  9     0xd9bb5  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                              #  10    0xd9bb8  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                     #  11    0xd9bba  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                                               #  12    0xd9bbe  2      OPC=xchgw_ax_r16    
  nop                                                          #  13    0xd9bc0  1      OPC=nop             
  nop                                                          #  14    0xd9bc1  1      OPC=nop             
  nop                                                          #  15    0xd9bc2  1      OPC=nop             
  nop                                                          #  16    0xd9bc3  1      OPC=nop             
  nop                                                          #  17    0xd9bc4  1      OPC=nop             
  nop                                                          #  18    0xd9bc5  1      OPC=nop             
  nop                                                          #  19    0xd9bc6  1      OPC=nop             
  nop                                                          #  20    0xd9bc7  1      OPC=nop             
  nop                                                          #  21    0xd9bc8  1      OPC=nop             
  nop                                                          #  22    0xd9bc9  1      OPC=nop             
  nop                                                          #  23    0xd9bca  1      OPC=nop             
  nop                                                          #  24    0xd9bcb  1      OPC=nop             
  nop                                                          #  25    0xd9bcc  1      OPC=nop             
  nop                                                          #  26    0xd9bcd  1      OPC=nop             
  nop                                                          #  27    0xd9bce  1      OPC=nop             
  nop                                                          #  28    0xd9bcf  1      OPC=nop             
  nop                                                          #  29    0xd9bd0  1      OPC=nop             
  nop                                                          #  30    0xd9bd1  1      OPC=nop             
  nop                                                          #  31    0xd9bd2  1      OPC=nop             
  nop                                                          #  32    0xd9bd3  1      OPC=nop             
  nop                                                          #  33    0xd9bd4  1      OPC=nop             
  nop                                                          #  34    0xd9bd5  1      OPC=nop             
  nop                                                          #  35    0xd9bd6  1      OPC=nop             
  nop                                                          #  36    0xd9bd7  1      OPC=nop             
  nop                                                          #  37    0xd9bd8  1      OPC=nop             
  nop                                                          #  38    0xd9bd9  1      OPC=nop             
  nop                                                          #  39    0xd9bda  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  40    0xd9bdb  5      OPC=callq_label     
  movl %ebx, %eax                                              #  41    0xd9be0  2      OPC=movl_r32_r32    
  popq %rbx                                                    #  42    0xd9be2  1      OPC=popq_r64_1      
  popq %r11                                                    #  43    0xd9be3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                      #  44    0xd9be5  7      OPC=andl_r32_imm32  
  nop                                                          #  45    0xd9bec  1      OPC=nop             
  nop                                                          #  46    0xd9bed  1      OPC=nop             
  nop                                                          #  47    0xd9bee  1      OPC=nop             
  nop                                                          #  48    0xd9bef  1      OPC=nop             
  addq %r15, %r11                                              #  49    0xd9bf0  3      OPC=addq_r64_r64    
  jmpq %r11                                                    #  50    0xd9bf3  3      OPC=jmpq_r64        
  nop                                                          #  51    0xd9bf6  1      OPC=nop             
  nop                                                          #  52    0xd9bf7  1      OPC=nop             
  nop                                                          #  53    0xd9bf8  1      OPC=nop             
  nop                                                          #  54    0xd9bf9  1      OPC=nop             
  nop                                                          #  55    0xd9bfa  1      OPC=nop             
  nop                                                          #  56    0xd9bfb  1      OPC=nop             
  nop                                                          #  57    0xd9bfc  1      OPC=nop             
  nop                                                          #  58    0xd9bfd  1      OPC=nop             
  nop                                                          #  59    0xd9bfe  1      OPC=nop             
  nop                                                          #  60    0xd9bff  1      OPC=nop             
  nop                                                          #  61    0xd9c00  1      OPC=nop             
  nop                                                          #  62    0xd9c01  1      OPC=nop             
  nop                                                          #  63    0xd9c02  1      OPC=nop             
  nop                                                          #  64    0xd9c03  1      OPC=nop             
  nop                                                          #  65    0xd9c04  1      OPC=nop             
  nop                                                          #  66    0xd9c05  1      OPC=nop             
  nop                                                          #  67    0xd9c06  1      OPC=nop             
                                                                                                            
.size _ZNSbIwSt11char_traitsIwESaIwEEaSEw, .-_ZNSbIwSt11char_traitsIwESaIwEEaSEw

