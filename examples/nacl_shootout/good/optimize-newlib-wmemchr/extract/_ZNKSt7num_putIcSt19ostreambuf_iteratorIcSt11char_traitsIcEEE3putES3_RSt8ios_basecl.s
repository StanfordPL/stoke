  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl, @function

#! file-offset 0xb7f00
#! rip-offset  0x77f00
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl:  #        0x77f00  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x77f00  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x77f02  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x77f05  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x77f08  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x77f0a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x77f0c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x77f10  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x77f13  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                          #  9     0x77f15  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x77f1a  1      OPC=nop             
  nop                                                                                  #  11    0x77f1b  1      OPC=nop             
  nop                                                                                  #  12    0x77f1c  1      OPC=nop             
  nop                                                                                  #  13    0x77f1d  1      OPC=nop             
  nop                                                                                  #  14    0x77f1e  1      OPC=nop             
  nop                                                                                  #  15    0x77f1f  1      OPC=nop             
  nop                                                                                  #  16    0x77f20  1      OPC=nop             
  nop                                                                                  #  17    0x77f21  1      OPC=nop             
  nop                                                                                  #  18    0x77f22  1      OPC=nop             
  nop                                                                                  #  19    0x77f23  1      OPC=nop             
  nop                                                                                  #  20    0x77f24  1      OPC=nop             
  nop                                                                                  #  21    0x77f25  1      OPC=nop             
  nop                                                                                  #  22    0x77f26  1      OPC=nop             
  nop                                                                                  #  23    0x77f27  1      OPC=nop             
  nop                                                                                  #  24    0x77f28  1      OPC=nop             
  nop                                                                                  #  25    0x77f29  1      OPC=nop             
  nop                                                                                  #  26    0x77f2a  1      OPC=nop             
  nop                                                                                  #  27    0x77f2b  1      OPC=nop             
  nop                                                                                  #  28    0x77f2c  1      OPC=nop             
  nop                                                                                  #  29    0x77f2d  1      OPC=nop             
  nop                                                                                  #  30    0x77f2e  1      OPC=nop             
  nop                                                                                  #  31    0x77f2f  1      OPC=nop             
  nop                                                                                  #  32    0x77f30  1      OPC=nop             
  nop                                                                                  #  33    0x77f31  1      OPC=nop             
  nop                                                                                  #  34    0x77f32  1      OPC=nop             
  nop                                                                                  #  35    0x77f33  1      OPC=nop             
  nop                                                                                  #  36    0x77f34  1      OPC=nop             
  nop                                                                                  #  37    0x77f35  1      OPC=nop             
  nop                                                                                  #  38    0x77f36  1      OPC=nop             
  nop                                                                                  #  39    0x77f37  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x77f38  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x77f3e  1      OPC=nop             
  nop                                                                                  #  42    0x77f3f  1      OPC=nop             
  nop                                                                                  #  43    0x77f40  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x77f41  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x77f44  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x77f46  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x77f49  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x77f4c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x77f4e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x77f55  1      OPC=nop             
  nop                                                                                  #  51    0x77f56  1      OPC=nop             
  nop                                                                                  #  52    0x77f57  1      OPC=nop             
  nop                                                                                  #  53    0x77f58  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x77f59  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x77f5c  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x77f5f  1      OPC=nop             
  nop                                                                                  #  57    0x77f60  1      OPC=nop             
  nop                                                                                  #  58    0x77f61  1      OPC=nop             
  nop                                                                                  #  59    0x77f62  1      OPC=nop             
  nop                                                                                  #  60    0x77f63  1      OPC=nop             
  nop                                                                                  #  61    0x77f64  1      OPC=nop             
  nop                                                                                  #  62    0x77f65  1      OPC=nop             
  nop                                                                                  #  63    0x77f66  1      OPC=nop             
  nop                                                                                  #  64    0x77f67  1      OPC=nop             
  nop                                                                                  #  65    0x77f68  1      OPC=nop             
  nop                                                                                  #  66    0x77f69  1      OPC=nop             
  nop                                                                                  #  67    0x77f6a  1      OPC=nop             
  nop                                                                                  #  68    0x77f6b  1      OPC=nop             
  nop                                                                                  #  69    0x77f6c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl

