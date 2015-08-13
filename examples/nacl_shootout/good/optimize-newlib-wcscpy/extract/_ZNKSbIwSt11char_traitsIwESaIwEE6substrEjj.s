  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj, @function

#! file-offset 0x117b20
#! rip-offset  0xd7b20
#! capacity    96 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj:        #        0xd7b20  0      OPC=<label>         
  movl %esi, %esi                                   #  1     0xd7b20  2      OPC=movl_r32_r32    
  pushq %rbx                                        #  2     0xd7b22  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                   #  3     0xd7b23  2      OPC=movl_r32_r32    
  movl %esi, %esi                                   #  4     0xd7b25  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                          #  5     0xd7b27  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                   #  6     0xd7b2b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                   #  7     0xd7b2e  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %edx                          #  8     0xd7b30  4      OPC=cmpl_r32_m32    
  ja .L_d7b60                                       #  9     0xd7b34  2      OPC=ja_label        
  movl %ebx, %edi                                   #  10    0xd7b36  2      OPC=movl_r32_r32    
  nop                                               #  11    0xd7b38  1      OPC=nop             
  nop                                               #  12    0xd7b39  1      OPC=nop             
  nop                                               #  13    0xd7b3a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj  #  14    0xd7b3b  5      OPC=callq_label     
  movl %ebx, %eax                                   #  15    0xd7b40  2      OPC=movl_r32_r32    
  popq %rbx                                         #  16    0xd7b42  1      OPC=popq_r64_1      
  popq %r11                                         #  17    0xd7b43  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  18    0xd7b45  7      OPC=andl_r32_imm32  
  nop                                               #  19    0xd7b4c  1      OPC=nop             
  nop                                               #  20    0xd7b4d  1      OPC=nop             
  nop                                               #  21    0xd7b4e  1      OPC=nop             
  nop                                               #  22    0xd7b4f  1      OPC=nop             
  addq %r15, %r11                                   #  23    0xd7b50  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  24    0xd7b53  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                    #  25    0xd7b56  2      OPC=xchgw_ax_r16    
  nop                                               #  26    0xd7b58  1      OPC=nop             
  nop                                               #  27    0xd7b59  1      OPC=nop             
  nop                                               #  28    0xd7b5a  1      OPC=nop             
  nop                                               #  29    0xd7b5b  1      OPC=nop             
  nop                                               #  30    0xd7b5c  1      OPC=nop             
  nop                                               #  31    0xd7b5d  1      OPC=nop             
  nop                                               #  32    0xd7b5e  1      OPC=nop             
  nop                                               #  33    0xd7b5f  1      OPC=nop             
  nop                                               #  34    0xd7b60  1      OPC=nop             
  nop                                               #  35    0xd7b61  1      OPC=nop             
  nop                                               #  36    0xd7b62  1      OPC=nop             
  nop                                               #  37    0xd7b63  1      OPC=nop             
  nop                                               #  38    0xd7b64  1      OPC=nop             
  nop                                               #  39    0xd7b65  1      OPC=nop             
  nop                                               #  40    0xd7b66  1      OPC=nop             
.L_d7b60:                                           #        0xd7b67  0      OPC=<label>         
  movl $0x1003bb16, %edi                            #  41    0xd7b67  5      OPC=movl_r32_imm32  
  nop                                               #  42    0xd7b6c  1      OPC=nop             
  nop                                               #  43    0xd7b6d  1      OPC=nop             
  nop                                               #  44    0xd7b6e  1      OPC=nop             
  nop                                               #  45    0xd7b6f  1      OPC=nop             
  nop                                               #  46    0xd7b70  1      OPC=nop             
  nop                                               #  47    0xd7b71  1      OPC=nop             
  nop                                               #  48    0xd7b72  1      OPC=nop             
  nop                                               #  49    0xd7b73  1      OPC=nop             
  nop                                               #  50    0xd7b74  1      OPC=nop             
  nop                                               #  51    0xd7b75  1      OPC=nop             
  nop                                               #  52    0xd7b76  1      OPC=nop             
  nop                                               #  53    0xd7b77  1      OPC=nop             
  nop                                               #  54    0xd7b78  1      OPC=nop             
  nop                                               #  55    0xd7b79  1      OPC=nop             
  nop                                               #  56    0xd7b7a  1      OPC=nop             
  nop                                               #  57    0xd7b7b  1      OPC=nop             
  nop                                               #  58    0xd7b7c  1      OPC=nop             
  nop                                               #  59    0xd7b7d  1      OPC=nop             
  nop                                               #  60    0xd7b7e  1      OPC=nop             
  nop                                               #  61    0xd7b7f  1      OPC=nop             
  nop                                               #  62    0xd7b80  1      OPC=nop             
  nop                                               #  63    0xd7b81  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc              #  64    0xd7b82  5      OPC=callq_label     
                                                                                                 
.size _ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj, .-_ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj

