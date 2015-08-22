  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEaSEw
  .type _ZNSbIwSt11char_traitsIwESaIwEEaSEw, @function

#! file-offset 0x11a2c0
#! rip-offset  0xda2c0
#! capacity    96 bytes

# Text                                                         #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEaSEw:                          #        0xda2c0  0      OPC=<label>         
  pushq %rbx                                                   #  1     0xda2c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                              #  2     0xda2c1  2      OPC=movl_r32_r32    
  movl %esi, %r8d                                              #  3     0xda2c3  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                              #  4     0xda2c6  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                     #  5     0xda2c8  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                              #  6     0xda2cc  2      OPC=movl_r32_r32    
  movl $0x1, %ecx                                              #  7     0xda2ce  5      OPC=movl_r32_imm32  
  xorl %esi, %esi                                              #  8     0xda2d3  2      OPC=xorl_r32_r32    
  subl $0xc, %eax                                              #  9     0xda2d5  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                              #  10    0xda2d8  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                     #  11    0xda2da  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                                               #  12    0xda2de  2      OPC=xchgw_ax_r16    
  nop                                                          #  13    0xda2e0  1      OPC=nop             
  nop                                                          #  14    0xda2e1  1      OPC=nop             
  nop                                                          #  15    0xda2e2  1      OPC=nop             
  nop                                                          #  16    0xda2e3  1      OPC=nop             
  nop                                                          #  17    0xda2e4  1      OPC=nop             
  nop                                                          #  18    0xda2e5  1      OPC=nop             
  nop                                                          #  19    0xda2e6  1      OPC=nop             
  nop                                                          #  20    0xda2e7  1      OPC=nop             
  nop                                                          #  21    0xda2e8  1      OPC=nop             
  nop                                                          #  22    0xda2e9  1      OPC=nop             
  nop                                                          #  23    0xda2ea  1      OPC=nop             
  nop                                                          #  24    0xda2eb  1      OPC=nop             
  nop                                                          #  25    0xda2ec  1      OPC=nop             
  nop                                                          #  26    0xda2ed  1      OPC=nop             
  nop                                                          #  27    0xda2ee  1      OPC=nop             
  nop                                                          #  28    0xda2ef  1      OPC=nop             
  nop                                                          #  29    0xda2f0  1      OPC=nop             
  nop                                                          #  30    0xda2f1  1      OPC=nop             
  nop                                                          #  31    0xda2f2  1      OPC=nop             
  nop                                                          #  32    0xda2f3  1      OPC=nop             
  nop                                                          #  33    0xda2f4  1      OPC=nop             
  nop                                                          #  34    0xda2f5  1      OPC=nop             
  nop                                                          #  35    0xda2f6  1      OPC=nop             
  nop                                                          #  36    0xda2f7  1      OPC=nop             
  nop                                                          #  37    0xda2f8  1      OPC=nop             
  nop                                                          #  38    0xda2f9  1      OPC=nop             
  nop                                                          #  39    0xda2fa  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  40    0xda2fb  5      OPC=callq_label     
  movl %ebx, %eax                                              #  41    0xda300  2      OPC=movl_r32_r32    
  popq %rbx                                                    #  42    0xda302  1      OPC=popq_r64_1      
  popq %r11                                                    #  43    0xda303  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                      #  44    0xda305  7      OPC=andl_r32_imm32  
  nop                                                          #  45    0xda30c  1      OPC=nop             
  nop                                                          #  46    0xda30d  1      OPC=nop             
  nop                                                          #  47    0xda30e  1      OPC=nop             
  nop                                                          #  48    0xda30f  1      OPC=nop             
  addq %r15, %r11                                              #  49    0xda310  3      OPC=addq_r64_r64    
  jmpq %r11                                                    #  50    0xda313  3      OPC=jmpq_r64        
  nop                                                          #  51    0xda316  1      OPC=nop             
  nop                                                          #  52    0xda317  1      OPC=nop             
  nop                                                          #  53    0xda318  1      OPC=nop             
  nop                                                          #  54    0xda319  1      OPC=nop             
  nop                                                          #  55    0xda31a  1      OPC=nop             
  nop                                                          #  56    0xda31b  1      OPC=nop             
  nop                                                          #  57    0xda31c  1      OPC=nop             
  nop                                                          #  58    0xda31d  1      OPC=nop             
  nop                                                          #  59    0xda31e  1      OPC=nop             
  nop                                                          #  60    0xda31f  1      OPC=nop             
  nop                                                          #  61    0xda320  1      OPC=nop             
  nop                                                          #  62    0xda321  1      OPC=nop             
  nop                                                          #  63    0xda322  1      OPC=nop             
  nop                                                          #  64    0xda323  1      OPC=nop             
  nop                                                          #  65    0xda324  1      OPC=nop             
  nop                                                          #  66    0xda325  1      OPC=nop             
  nop                                                          #  67    0xda326  1      OPC=nop             
                                                                                                            
.size _ZNSbIwSt11char_traitsIwESaIwEEaSEw, .-_ZNSbIwSt11char_traitsIwESaIwEEaSEw

