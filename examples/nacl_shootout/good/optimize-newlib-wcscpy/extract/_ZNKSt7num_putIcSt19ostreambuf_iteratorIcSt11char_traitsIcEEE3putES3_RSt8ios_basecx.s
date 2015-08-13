  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx, @function

#! file-offset 0xb7cc0
#! rip-offset  0x77cc0
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx:  #        0x77cc0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x77cc0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x77cc2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x77cc5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x77cc8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x77cca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x77ccc  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x77cd0  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x77cd3  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                         #  9     0x77cd5  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x77cda  1      OPC=nop             
  nop                                                                                  #  11    0x77cdb  1      OPC=nop             
  nop                                                                                  #  12    0x77cdc  1      OPC=nop             
  nop                                                                                  #  13    0x77cdd  1      OPC=nop             
  nop                                                                                  #  14    0x77cde  1      OPC=nop             
  nop                                                                                  #  15    0x77cdf  1      OPC=nop             
  nop                                                                                  #  16    0x77ce0  1      OPC=nop             
  nop                                                                                  #  17    0x77ce1  1      OPC=nop             
  nop                                                                                  #  18    0x77ce2  1      OPC=nop             
  nop                                                                                  #  19    0x77ce3  1      OPC=nop             
  nop                                                                                  #  20    0x77ce4  1      OPC=nop             
  nop                                                                                  #  21    0x77ce5  1      OPC=nop             
  nop                                                                                  #  22    0x77ce6  1      OPC=nop             
  nop                                                                                  #  23    0x77ce7  1      OPC=nop             
  nop                                                                                  #  24    0x77ce8  1      OPC=nop             
  nop                                                                                  #  25    0x77ce9  1      OPC=nop             
  nop                                                                                  #  26    0x77cea  1      OPC=nop             
  nop                                                                                  #  27    0x77ceb  1      OPC=nop             
  nop                                                                                  #  28    0x77cec  1      OPC=nop             
  nop                                                                                  #  29    0x77ced  1      OPC=nop             
  nop                                                                                  #  30    0x77cee  1      OPC=nop             
  nop                                                                                  #  31    0x77cef  1      OPC=nop             
  nop                                                                                  #  32    0x77cf0  1      OPC=nop             
  nop                                                                                  #  33    0x77cf1  1      OPC=nop             
  nop                                                                                  #  34    0x77cf2  1      OPC=nop             
  nop                                                                                  #  35    0x77cf3  1      OPC=nop             
  nop                                                                                  #  36    0x77cf4  1      OPC=nop             
  nop                                                                                  #  37    0x77cf5  1      OPC=nop             
  nop                                                                                  #  38    0x77cf6  1      OPC=nop             
  nop                                                                                  #  39    0x77cf7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x77cf8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x77cfe  1      OPC=nop             
  nop                                                                                  #  42    0x77cff  1      OPC=nop             
  nop                                                                                  #  43    0x77d00  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x77d01  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x77d04  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x77d06  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x77d09  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x77d0c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x77d0e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x77d15  1      OPC=nop             
  nop                                                                                  #  51    0x77d16  1      OPC=nop             
  nop                                                                                  #  52    0x77d17  1      OPC=nop             
  nop                                                                                  #  53    0x77d18  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x77d19  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x77d1c  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x77d1f  1      OPC=nop             
  nop                                                                                  #  57    0x77d20  1      OPC=nop             
  nop                                                                                  #  58    0x77d21  1      OPC=nop             
  nop                                                                                  #  59    0x77d22  1      OPC=nop             
  nop                                                                                  #  60    0x77d23  1      OPC=nop             
  nop                                                                                  #  61    0x77d24  1      OPC=nop             
  nop                                                                                  #  62    0x77d25  1      OPC=nop             
  nop                                                                                  #  63    0x77d26  1      OPC=nop             
  nop                                                                                  #  64    0x77d27  1      OPC=nop             
  nop                                                                                  #  65    0x77d28  1      OPC=nop             
  nop                                                                                  #  66    0x77d29  1      OPC=nop             
  nop                                                                                  #  67    0x77d2a  1      OPC=nop             
  nop                                                                                  #  68    0x77d2b  1      OPC=nop             
  nop                                                                                  #  69    0x77d2c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx

