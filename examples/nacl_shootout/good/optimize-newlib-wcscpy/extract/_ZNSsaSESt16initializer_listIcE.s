  .text
  .globl _ZNSsaSESt16initializer_listIcE
  .type _ZNSsaSESt16initializer_listIcE, @function

#! file-offset 0xef3c0
#! rip-offset  0xaf3c0
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSsaSESt16initializer_listIcE:  #        0xaf3c0  0      OPC=<label>         
  pushq %rbx                       #  1     0xaf3c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xaf3c1  2      OPC=movl_r32_r32    
  movq %rsi, %r8                   #  3     0xaf3c3  3      OPC=movq_r64_r64    
  movl %ebx, %ebx                  #  4     0xaf3c6  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax         #  5     0xaf3c8  4      OPC=movl_r32_m32    
  movl %esi, %ecx                  #  6     0xaf3cc  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  7     0xaf3ce  2      OPC=movl_r32_r32    
  shrq $0x20, %r8                  #  8     0xaf3d0  4      OPC=shrq_r64_imm8   
  xorl %esi, %esi                  #  9     0xaf3d4  2      OPC=xorl_r32_r32    
  subl $0xc, %eax                  #  10    0xaf3d6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                  #  11    0xaf3d9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx         #  12    0xaf3db  4      OPC=movl_r32_m32    
  nop                              #  13    0xaf3df  1      OPC=nop             
  nop                              #  14    0xaf3e0  1      OPC=nop             
  nop                              #  15    0xaf3e1  1      OPC=nop             
  nop                              #  16    0xaf3e2  1      OPC=nop             
  nop                              #  17    0xaf3e3  1      OPC=nop             
  nop                              #  18    0xaf3e4  1      OPC=nop             
  nop                              #  19    0xaf3e5  1      OPC=nop             
  nop                              #  20    0xaf3e6  1      OPC=nop             
  nop                              #  21    0xaf3e7  1      OPC=nop             
  nop                              #  22    0xaf3e8  1      OPC=nop             
  nop                              #  23    0xaf3e9  1      OPC=nop             
  nop                              #  24    0xaf3ea  1      OPC=nop             
  nop                              #  25    0xaf3eb  1      OPC=nop             
  nop                              #  26    0xaf3ec  1      OPC=nop             
  nop                              #  27    0xaf3ed  1      OPC=nop             
  nop                              #  28    0xaf3ee  1      OPC=nop             
  nop                              #  29    0xaf3ef  1      OPC=nop             
  nop                              #  30    0xaf3f0  1      OPC=nop             
  nop                              #  31    0xaf3f1  1      OPC=nop             
  nop                              #  32    0xaf3f2  1      OPC=nop             
  nop                              #  33    0xaf3f3  1      OPC=nop             
  nop                              #  34    0xaf3f4  1      OPC=nop             
  nop                              #  35    0xaf3f5  1      OPC=nop             
  nop                              #  36    0xaf3f6  1      OPC=nop             
  nop                              #  37    0xaf3f7  1      OPC=nop             
  nop                              #  38    0xaf3f8  1      OPC=nop             
  nop                              #  39    0xaf3f9  1      OPC=nop             
  nop                              #  40    0xaf3fa  1      OPC=nop             
  callq ._ZNSs7replaceEjjPKcj      #  41    0xaf3fb  5      OPC=callq_label     
  movl %ebx, %eax                  #  42    0xaf400  2      OPC=movl_r32_r32    
  popq %rbx                        #  43    0xaf402  1      OPC=popq_r64_1      
  popq %r11                        #  44    0xaf403  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  45    0xaf405  7      OPC=andl_r32_imm32  
  nop                              #  46    0xaf40c  1      OPC=nop             
  nop                              #  47    0xaf40d  1      OPC=nop             
  nop                              #  48    0xaf40e  1      OPC=nop             
  nop                              #  49    0xaf40f  1      OPC=nop             
  addq %r15, %r11                  #  50    0xaf410  3      OPC=addq_r64_r64    
  jmpq %r11                        #  51    0xaf413  3      OPC=jmpq_r64        
  nop                              #  52    0xaf416  1      OPC=nop             
  nop                              #  53    0xaf417  1      OPC=nop             
  nop                              #  54    0xaf418  1      OPC=nop             
  nop                              #  55    0xaf419  1      OPC=nop             
  nop                              #  56    0xaf41a  1      OPC=nop             
  nop                              #  57    0xaf41b  1      OPC=nop             
  nop                              #  58    0xaf41c  1      OPC=nop             
  nop                              #  59    0xaf41d  1      OPC=nop             
  nop                              #  60    0xaf41e  1      OPC=nop             
  nop                              #  61    0xaf41f  1      OPC=nop             
  nop                              #  62    0xaf420  1      OPC=nop             
  nop                              #  63    0xaf421  1      OPC=nop             
  nop                              #  64    0xaf422  1      OPC=nop             
  nop                              #  65    0xaf423  1      OPC=nop             
  nop                              #  66    0xaf424  1      OPC=nop             
  nop                              #  67    0xaf425  1      OPC=nop             
  nop                              #  68    0xaf426  1      OPC=nop             
                                                                                
.size _ZNSsaSESt16initializer_listIcE, .-_ZNSsaSESt16initializer_listIcE

