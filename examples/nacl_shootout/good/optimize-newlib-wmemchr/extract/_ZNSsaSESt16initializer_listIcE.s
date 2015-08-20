  .text
  .globl _ZNSsaSESt16initializer_listIcE
  .type _ZNSsaSESt16initializer_listIcE, @function

#! file-offset 0xef6c0
#! rip-offset  0xaf6c0
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSsaSESt16initializer_listIcE:  #        0xaf6c0  0      OPC=<label>         
  pushq %rbx                       #  1     0xaf6c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xaf6c1  2      OPC=movl_r32_r32    
  movq %rsi, %r8                   #  3     0xaf6c3  3      OPC=movq_r64_r64    
  movl %ebx, %ebx                  #  4     0xaf6c6  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax         #  5     0xaf6c8  4      OPC=movl_r32_m32    
  movl %esi, %ecx                  #  6     0xaf6cc  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  7     0xaf6ce  2      OPC=movl_r32_r32    
  shrq $0x20, %r8                  #  8     0xaf6d0  4      OPC=shrq_r64_imm8   
  xorl %esi, %esi                  #  9     0xaf6d4  2      OPC=xorl_r32_r32    
  subl $0xc, %eax                  #  10    0xaf6d6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                  #  11    0xaf6d9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx         #  12    0xaf6db  4      OPC=movl_r32_m32    
  nop                              #  13    0xaf6df  1      OPC=nop             
  nop                              #  14    0xaf6e0  1      OPC=nop             
  nop                              #  15    0xaf6e1  1      OPC=nop             
  nop                              #  16    0xaf6e2  1      OPC=nop             
  nop                              #  17    0xaf6e3  1      OPC=nop             
  nop                              #  18    0xaf6e4  1      OPC=nop             
  nop                              #  19    0xaf6e5  1      OPC=nop             
  nop                              #  20    0xaf6e6  1      OPC=nop             
  nop                              #  21    0xaf6e7  1      OPC=nop             
  nop                              #  22    0xaf6e8  1      OPC=nop             
  nop                              #  23    0xaf6e9  1      OPC=nop             
  nop                              #  24    0xaf6ea  1      OPC=nop             
  nop                              #  25    0xaf6eb  1      OPC=nop             
  nop                              #  26    0xaf6ec  1      OPC=nop             
  nop                              #  27    0xaf6ed  1      OPC=nop             
  nop                              #  28    0xaf6ee  1      OPC=nop             
  nop                              #  29    0xaf6ef  1      OPC=nop             
  nop                              #  30    0xaf6f0  1      OPC=nop             
  nop                              #  31    0xaf6f1  1      OPC=nop             
  nop                              #  32    0xaf6f2  1      OPC=nop             
  nop                              #  33    0xaf6f3  1      OPC=nop             
  nop                              #  34    0xaf6f4  1      OPC=nop             
  nop                              #  35    0xaf6f5  1      OPC=nop             
  nop                              #  36    0xaf6f6  1      OPC=nop             
  nop                              #  37    0xaf6f7  1      OPC=nop             
  nop                              #  38    0xaf6f8  1      OPC=nop             
  nop                              #  39    0xaf6f9  1      OPC=nop             
  nop                              #  40    0xaf6fa  1      OPC=nop             
  callq ._ZNSs7replaceEjjPKcj      #  41    0xaf6fb  5      OPC=callq_label     
  movl %ebx, %eax                  #  42    0xaf700  2      OPC=movl_r32_r32    
  popq %rbx                        #  43    0xaf702  1      OPC=popq_r64_1      
  popq %r11                        #  44    0xaf703  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  45    0xaf705  7      OPC=andl_r32_imm32  
  nop                              #  46    0xaf70c  1      OPC=nop             
  nop                              #  47    0xaf70d  1      OPC=nop             
  nop                              #  48    0xaf70e  1      OPC=nop             
  nop                              #  49    0xaf70f  1      OPC=nop             
  addq %r15, %r11                  #  50    0xaf710  3      OPC=addq_r64_r64    
  jmpq %r11                        #  51    0xaf713  3      OPC=jmpq_r64        
  nop                              #  52    0xaf716  1      OPC=nop             
  nop                              #  53    0xaf717  1      OPC=nop             
  nop                              #  54    0xaf718  1      OPC=nop             
  nop                              #  55    0xaf719  1      OPC=nop             
  nop                              #  56    0xaf71a  1      OPC=nop             
  nop                              #  57    0xaf71b  1      OPC=nop             
  nop                              #  58    0xaf71c  1      OPC=nop             
  nop                              #  59    0xaf71d  1      OPC=nop             
  nop                              #  60    0xaf71e  1      OPC=nop             
  nop                              #  61    0xaf71f  1      OPC=nop             
  nop                              #  62    0xaf720  1      OPC=nop             
  nop                              #  63    0xaf721  1      OPC=nop             
  nop                              #  64    0xaf722  1      OPC=nop             
  nop                              #  65    0xaf723  1      OPC=nop             
  nop                              #  66    0xaf724  1      OPC=nop             
  nop                              #  67    0xaf725  1      OPC=nop             
  nop                              #  68    0xaf726  1      OPC=nop             
                                                                                
.size _ZNSsaSESt16initializer_listIcE, .-_ZNSsaSESt16initializer_listIcE

