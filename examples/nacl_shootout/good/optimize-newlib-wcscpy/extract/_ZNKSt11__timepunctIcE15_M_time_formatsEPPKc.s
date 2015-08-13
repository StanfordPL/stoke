  .text
  .globl _ZNKSt11__timepunctIcE15_M_time_formatsEPPKc
  .type _ZNKSt11__timepunctIcE15_M_time_formatsEPPKc, @function

#! file-offset 0xb7ee0
#! rip-offset  0x77ee0
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE15_M_time_formatsEPPKc:  #        0x77ee0  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x77ee0  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0x77ee2  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0x77ee4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0x77ee6  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0x77eeb  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0x77eed  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %edx                  #  7     0x77eef  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0x77ef4  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0x77ef6  4      OPC=movl_m32_r32    
  nop                                           #  10    0x77efa  1      OPC=nop             
  nop                                           #  11    0x77efb  1      OPC=nop             
  nop                                           #  12    0x77efc  1      OPC=nop             
  nop                                           #  13    0x77efd  1      OPC=nop             
  nop                                           #  14    0x77efe  1      OPC=nop             
  nop                                           #  15    0x77eff  1      OPC=nop             
  movl %eax, %eax                               #  16    0x77f00  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                  #  17    0x77f02  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0x77f07  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0x77f09  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0x77f0e  7      OPC=andl_r32_imm32  
  nop                                           #  21    0x77f15  1      OPC=nop             
  nop                                           #  22    0x77f16  1      OPC=nop             
  nop                                           #  23    0x77f17  1      OPC=nop             
  nop                                           #  24    0x77f18  1      OPC=nop             
  addq %r15, %r11                               #  25    0x77f19  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0x77f1c  3      OPC=jmpq_r64        
  nop                                           #  27    0x77f1f  1      OPC=nop             
  nop                                           #  28    0x77f20  1      OPC=nop             
  nop                                           #  29    0x77f21  1      OPC=nop             
  nop                                           #  30    0x77f22  1      OPC=nop             
  nop                                           #  31    0x77f23  1      OPC=nop             
  nop                                           #  32    0x77f24  1      OPC=nop             
  nop                                           #  33    0x77f25  1      OPC=nop             
  nop                                           #  34    0x77f26  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIcE15_M_time_formatsEPPKc, .-_ZNKSt11__timepunctIcE15_M_time_formatsEPPKc

