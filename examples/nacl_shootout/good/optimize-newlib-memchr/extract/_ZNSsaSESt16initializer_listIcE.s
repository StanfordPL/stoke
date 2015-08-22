  .text
  .globl _ZNSsaSESt16initializer_listIcE
  .type _ZNSsaSESt16initializer_listIcE, @function

#! file-offset 0xefde0
#! rip-offset  0xafde0
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSsaSESt16initializer_listIcE:  #        0xafde0  0      OPC=<label>         
  pushq %rbx                       #  1     0xafde0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xafde1  2      OPC=movl_r32_r32    
  movq %rsi, %r8                   #  3     0xafde3  3      OPC=movq_r64_r64    
  movl %ebx, %ebx                  #  4     0xafde6  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax         #  5     0xafde8  4      OPC=movl_r32_m32    
  movl %esi, %ecx                  #  6     0xafdec  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  7     0xafdee  2      OPC=movl_r32_r32    
  shrq $0x20, %r8                  #  8     0xafdf0  4      OPC=shrq_r64_imm8   
  xorl %esi, %esi                  #  9     0xafdf4  2      OPC=xorl_r32_r32    
  subl $0xc, %eax                  #  10    0xafdf6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                  #  11    0xafdf9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx         #  12    0xafdfb  4      OPC=movl_r32_m32    
  nop                              #  13    0xafdff  1      OPC=nop             
  nop                              #  14    0xafe00  1      OPC=nop             
  nop                              #  15    0xafe01  1      OPC=nop             
  nop                              #  16    0xafe02  1      OPC=nop             
  nop                              #  17    0xafe03  1      OPC=nop             
  nop                              #  18    0xafe04  1      OPC=nop             
  nop                              #  19    0xafe05  1      OPC=nop             
  nop                              #  20    0xafe06  1      OPC=nop             
  nop                              #  21    0xafe07  1      OPC=nop             
  nop                              #  22    0xafe08  1      OPC=nop             
  nop                              #  23    0xafe09  1      OPC=nop             
  nop                              #  24    0xafe0a  1      OPC=nop             
  nop                              #  25    0xafe0b  1      OPC=nop             
  nop                              #  26    0xafe0c  1      OPC=nop             
  nop                              #  27    0xafe0d  1      OPC=nop             
  nop                              #  28    0xafe0e  1      OPC=nop             
  nop                              #  29    0xafe0f  1      OPC=nop             
  nop                              #  30    0xafe10  1      OPC=nop             
  nop                              #  31    0xafe11  1      OPC=nop             
  nop                              #  32    0xafe12  1      OPC=nop             
  nop                              #  33    0xafe13  1      OPC=nop             
  nop                              #  34    0xafe14  1      OPC=nop             
  nop                              #  35    0xafe15  1      OPC=nop             
  nop                              #  36    0xafe16  1      OPC=nop             
  nop                              #  37    0xafe17  1      OPC=nop             
  nop                              #  38    0xafe18  1      OPC=nop             
  nop                              #  39    0xafe19  1      OPC=nop             
  nop                              #  40    0xafe1a  1      OPC=nop             
  callq ._ZNSs7replaceEjjPKcj      #  41    0xafe1b  5      OPC=callq_label     
  movl %ebx, %eax                  #  42    0xafe20  2      OPC=movl_r32_r32    
  popq %rbx                        #  43    0xafe22  1      OPC=popq_r64_1      
  popq %r11                        #  44    0xafe23  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  45    0xafe25  7      OPC=andl_r32_imm32  
  nop                              #  46    0xafe2c  1      OPC=nop             
  nop                              #  47    0xafe2d  1      OPC=nop             
  nop                              #  48    0xafe2e  1      OPC=nop             
  nop                              #  49    0xafe2f  1      OPC=nop             
  addq %r15, %r11                  #  50    0xafe30  3      OPC=addq_r64_r64    
  jmpq %r11                        #  51    0xafe33  3      OPC=jmpq_r64        
  nop                              #  52    0xafe36  1      OPC=nop             
  nop                              #  53    0xafe37  1      OPC=nop             
  nop                              #  54    0xafe38  1      OPC=nop             
  nop                              #  55    0xafe39  1      OPC=nop             
  nop                              #  56    0xafe3a  1      OPC=nop             
  nop                              #  57    0xafe3b  1      OPC=nop             
  nop                              #  58    0xafe3c  1      OPC=nop             
  nop                              #  59    0xafe3d  1      OPC=nop             
  nop                              #  60    0xafe3e  1      OPC=nop             
  nop                              #  61    0xafe3f  1      OPC=nop             
  nop                              #  62    0xafe40  1      OPC=nop             
  nop                              #  63    0xafe41  1      OPC=nop             
  nop                              #  64    0xafe42  1      OPC=nop             
  nop                              #  65    0xafe43  1      OPC=nop             
  nop                              #  66    0xafe44  1      OPC=nop             
  nop                              #  67    0xafe45  1      OPC=nop             
  nop                              #  68    0xafe46  1      OPC=nop             
                                                                                
.size _ZNSsaSESt16initializer_listIcE, .-_ZNSsaSESt16initializer_listIcE

