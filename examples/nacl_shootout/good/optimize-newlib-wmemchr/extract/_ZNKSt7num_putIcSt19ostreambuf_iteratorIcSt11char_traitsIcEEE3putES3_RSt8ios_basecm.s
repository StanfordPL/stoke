  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm, @function

#! file-offset 0xb7f60
#! rip-offset  0x77f60
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm:  #        0x77f60  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x77f60  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x77f62  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x77f65  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x77f68  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x77f6a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x77f6c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x77f70  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x77f73  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                         #  9     0x77f75  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x77f7a  1      OPC=nop             
  nop                                                                                  #  11    0x77f7b  1      OPC=nop             
  nop                                                                                  #  12    0x77f7c  1      OPC=nop             
  nop                                                                                  #  13    0x77f7d  1      OPC=nop             
  nop                                                                                  #  14    0x77f7e  1      OPC=nop             
  nop                                                                                  #  15    0x77f7f  1      OPC=nop             
  nop                                                                                  #  16    0x77f80  1      OPC=nop             
  nop                                                                                  #  17    0x77f81  1      OPC=nop             
  nop                                                                                  #  18    0x77f82  1      OPC=nop             
  nop                                                                                  #  19    0x77f83  1      OPC=nop             
  nop                                                                                  #  20    0x77f84  1      OPC=nop             
  nop                                                                                  #  21    0x77f85  1      OPC=nop             
  nop                                                                                  #  22    0x77f86  1      OPC=nop             
  nop                                                                                  #  23    0x77f87  1      OPC=nop             
  nop                                                                                  #  24    0x77f88  1      OPC=nop             
  nop                                                                                  #  25    0x77f89  1      OPC=nop             
  nop                                                                                  #  26    0x77f8a  1      OPC=nop             
  nop                                                                                  #  27    0x77f8b  1      OPC=nop             
  nop                                                                                  #  28    0x77f8c  1      OPC=nop             
  nop                                                                                  #  29    0x77f8d  1      OPC=nop             
  nop                                                                                  #  30    0x77f8e  1      OPC=nop             
  nop                                                                                  #  31    0x77f8f  1      OPC=nop             
  nop                                                                                  #  32    0x77f90  1      OPC=nop             
  nop                                                                                  #  33    0x77f91  1      OPC=nop             
  nop                                                                                  #  34    0x77f92  1      OPC=nop             
  nop                                                                                  #  35    0x77f93  1      OPC=nop             
  nop                                                                                  #  36    0x77f94  1      OPC=nop             
  nop                                                                                  #  37    0x77f95  1      OPC=nop             
  nop                                                                                  #  38    0x77f96  1      OPC=nop             
  nop                                                                                  #  39    0x77f97  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x77f98  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x77f9e  1      OPC=nop             
  nop                                                                                  #  42    0x77f9f  1      OPC=nop             
  nop                                                                                  #  43    0x77fa0  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x77fa1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x77fa4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x77fa6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x77fa9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x77fac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x77fae  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x77fb5  1      OPC=nop             
  nop                                                                                  #  51    0x77fb6  1      OPC=nop             
  nop                                                                                  #  52    0x77fb7  1      OPC=nop             
  nop                                                                                  #  53    0x77fb8  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x77fb9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x77fbc  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x77fbf  1      OPC=nop             
  nop                                                                                  #  57    0x77fc0  1      OPC=nop             
  nop                                                                                  #  58    0x77fc1  1      OPC=nop             
  nop                                                                                  #  59    0x77fc2  1      OPC=nop             
  nop                                                                                  #  60    0x77fc3  1      OPC=nop             
  nop                                                                                  #  61    0x77fc4  1      OPC=nop             
  nop                                                                                  #  62    0x77fc5  1      OPC=nop             
  nop                                                                                  #  63    0x77fc6  1      OPC=nop             
  nop                                                                                  #  64    0x77fc7  1      OPC=nop             
  nop                                                                                  #  65    0x77fc8  1      OPC=nop             
  nop                                                                                  #  66    0x77fc9  1      OPC=nop             
  nop                                                                                  #  67    0x77fca  1      OPC=nop             
  nop                                                                                  #  68    0x77fcb  1      OPC=nop             
  nop                                                                                  #  69    0x77fcc  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm

