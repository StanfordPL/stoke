  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy, @function

#! file-offset 0xb8020
#! rip-offset  0x78020
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy:  #        0x78020  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x78020  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x78022  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x78025  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x78028  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x7802a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x7802c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x78030  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x78033  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                                                         #  9     0x78035  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x7803a  1      OPC=nop             
  nop                                                                                  #  11    0x7803b  1      OPC=nop             
  nop                                                                                  #  12    0x7803c  1      OPC=nop             
  nop                                                                                  #  13    0x7803d  1      OPC=nop             
  nop                                                                                  #  14    0x7803e  1      OPC=nop             
  nop                                                                                  #  15    0x7803f  1      OPC=nop             
  nop                                                                                  #  16    0x78040  1      OPC=nop             
  nop                                                                                  #  17    0x78041  1      OPC=nop             
  nop                                                                                  #  18    0x78042  1      OPC=nop             
  nop                                                                                  #  19    0x78043  1      OPC=nop             
  nop                                                                                  #  20    0x78044  1      OPC=nop             
  nop                                                                                  #  21    0x78045  1      OPC=nop             
  nop                                                                                  #  22    0x78046  1      OPC=nop             
  nop                                                                                  #  23    0x78047  1      OPC=nop             
  nop                                                                                  #  24    0x78048  1      OPC=nop             
  nop                                                                                  #  25    0x78049  1      OPC=nop             
  nop                                                                                  #  26    0x7804a  1      OPC=nop             
  nop                                                                                  #  27    0x7804b  1      OPC=nop             
  nop                                                                                  #  28    0x7804c  1      OPC=nop             
  nop                                                                                  #  29    0x7804d  1      OPC=nop             
  nop                                                                                  #  30    0x7804e  1      OPC=nop             
  nop                                                                                  #  31    0x7804f  1      OPC=nop             
  nop                                                                                  #  32    0x78050  1      OPC=nop             
  nop                                                                                  #  33    0x78051  1      OPC=nop             
  nop                                                                                  #  34    0x78052  1      OPC=nop             
  nop                                                                                  #  35    0x78053  1      OPC=nop             
  nop                                                                                  #  36    0x78054  1      OPC=nop             
  nop                                                                                  #  37    0x78055  1      OPC=nop             
  nop                                                                                  #  38    0x78056  1      OPC=nop             
  nop                                                                                  #  39    0x78057  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x78058  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x7805e  1      OPC=nop             
  nop                                                                                  #  42    0x7805f  1      OPC=nop             
  nop                                                                                  #  43    0x78060  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x78061  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x78064  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x78066  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x78069  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x7806c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x7806e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x78075  1      OPC=nop             
  nop                                                                                  #  51    0x78076  1      OPC=nop             
  nop                                                                                  #  52    0x78077  1      OPC=nop             
  nop                                                                                  #  53    0x78078  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x78079  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x7807c  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x7807f  1      OPC=nop             
  nop                                                                                  #  57    0x78080  1      OPC=nop             
  nop                                                                                  #  58    0x78081  1      OPC=nop             
  nop                                                                                  #  59    0x78082  1      OPC=nop             
  nop                                                                                  #  60    0x78083  1      OPC=nop             
  nop                                                                                  #  61    0x78084  1      OPC=nop             
  nop                                                                                  #  62    0x78085  1      OPC=nop             
  nop                                                                                  #  63    0x78086  1      OPC=nop             
  nop                                                                                  #  64    0x78087  1      OPC=nop             
  nop                                                                                  #  65    0x78088  1      OPC=nop             
  nop                                                                                  #  66    0x78089  1      OPC=nop             
  nop                                                                                  #  67    0x7808a  1      OPC=nop             
  nop                                                                                  #  68    0x7808b  1      OPC=nop             
  nop                                                                                  #  69    0x7808c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy

