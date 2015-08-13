  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy, @function

#! file-offset 0xb7d20
#! rip-offset  0x77d20
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy:  #        0x77d20  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x77d20  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x77d22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x77d25  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x77d28  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x77d2a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x77d2c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x77d30  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x77d33  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                                                         #  9     0x77d35  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x77d3a  1      OPC=nop             
  nop                                                                                  #  11    0x77d3b  1      OPC=nop             
  nop                                                                                  #  12    0x77d3c  1      OPC=nop             
  nop                                                                                  #  13    0x77d3d  1      OPC=nop             
  nop                                                                                  #  14    0x77d3e  1      OPC=nop             
  nop                                                                                  #  15    0x77d3f  1      OPC=nop             
  nop                                                                                  #  16    0x77d40  1      OPC=nop             
  nop                                                                                  #  17    0x77d41  1      OPC=nop             
  nop                                                                                  #  18    0x77d42  1      OPC=nop             
  nop                                                                                  #  19    0x77d43  1      OPC=nop             
  nop                                                                                  #  20    0x77d44  1      OPC=nop             
  nop                                                                                  #  21    0x77d45  1      OPC=nop             
  nop                                                                                  #  22    0x77d46  1      OPC=nop             
  nop                                                                                  #  23    0x77d47  1      OPC=nop             
  nop                                                                                  #  24    0x77d48  1      OPC=nop             
  nop                                                                                  #  25    0x77d49  1      OPC=nop             
  nop                                                                                  #  26    0x77d4a  1      OPC=nop             
  nop                                                                                  #  27    0x77d4b  1      OPC=nop             
  nop                                                                                  #  28    0x77d4c  1      OPC=nop             
  nop                                                                                  #  29    0x77d4d  1      OPC=nop             
  nop                                                                                  #  30    0x77d4e  1      OPC=nop             
  nop                                                                                  #  31    0x77d4f  1      OPC=nop             
  nop                                                                                  #  32    0x77d50  1      OPC=nop             
  nop                                                                                  #  33    0x77d51  1      OPC=nop             
  nop                                                                                  #  34    0x77d52  1      OPC=nop             
  nop                                                                                  #  35    0x77d53  1      OPC=nop             
  nop                                                                                  #  36    0x77d54  1      OPC=nop             
  nop                                                                                  #  37    0x77d55  1      OPC=nop             
  nop                                                                                  #  38    0x77d56  1      OPC=nop             
  nop                                                                                  #  39    0x77d57  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x77d58  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x77d5e  1      OPC=nop             
  nop                                                                                  #  42    0x77d5f  1      OPC=nop             
  nop                                                                                  #  43    0x77d60  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x77d61  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x77d64  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x77d66  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x77d69  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x77d6c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x77d6e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x77d75  1      OPC=nop             
  nop                                                                                  #  51    0x77d76  1      OPC=nop             
  nop                                                                                  #  52    0x77d77  1      OPC=nop             
  nop                                                                                  #  53    0x77d78  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x77d79  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x77d7c  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x77d7f  1      OPC=nop             
  nop                                                                                  #  57    0x77d80  1      OPC=nop             
  nop                                                                                  #  58    0x77d81  1      OPC=nop             
  nop                                                                                  #  59    0x77d82  1      OPC=nop             
  nop                                                                                  #  60    0x77d83  1      OPC=nop             
  nop                                                                                  #  61    0x77d84  1      OPC=nop             
  nop                                                                                  #  62    0x77d85  1      OPC=nop             
  nop                                                                                  #  63    0x77d86  1      OPC=nop             
  nop                                                                                  #  64    0x77d87  1      OPC=nop             
  nop                                                                                  #  65    0x77d88  1      OPC=nop             
  nop                                                                                  #  66    0x77d89  1      OPC=nop             
  nop                                                                                  #  67    0x77d8a  1      OPC=nop             
  nop                                                                                  #  68    0x77d8b  1      OPC=nop             
  nop                                                                                  #  69    0x77d8c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy

