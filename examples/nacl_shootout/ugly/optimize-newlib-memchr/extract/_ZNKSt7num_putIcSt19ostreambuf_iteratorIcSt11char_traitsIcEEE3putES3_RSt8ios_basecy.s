  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy, @function

#! file-offset 0xb8740
#! rip-offset  0x78740
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy:  #        0x78740  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x78740  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x78742  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x78745  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x78748  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x7874a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x7874c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x78750  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x78753  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                                                         #  9     0x78755  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x7875a  1      OPC=nop             
  nop                                                                                  #  11    0x7875b  1      OPC=nop             
  nop                                                                                  #  12    0x7875c  1      OPC=nop             
  nop                                                                                  #  13    0x7875d  1      OPC=nop             
  nop                                                                                  #  14    0x7875e  1      OPC=nop             
  nop                                                                                  #  15    0x7875f  1      OPC=nop             
  nop                                                                                  #  16    0x78760  1      OPC=nop             
  nop                                                                                  #  17    0x78761  1      OPC=nop             
  nop                                                                                  #  18    0x78762  1      OPC=nop             
  nop                                                                                  #  19    0x78763  1      OPC=nop             
  nop                                                                                  #  20    0x78764  1      OPC=nop             
  nop                                                                                  #  21    0x78765  1      OPC=nop             
  nop                                                                                  #  22    0x78766  1      OPC=nop             
  nop                                                                                  #  23    0x78767  1      OPC=nop             
  nop                                                                                  #  24    0x78768  1      OPC=nop             
  nop                                                                                  #  25    0x78769  1      OPC=nop             
  nop                                                                                  #  26    0x7876a  1      OPC=nop             
  nop                                                                                  #  27    0x7876b  1      OPC=nop             
  nop                                                                                  #  28    0x7876c  1      OPC=nop             
  nop                                                                                  #  29    0x7876d  1      OPC=nop             
  nop                                                                                  #  30    0x7876e  1      OPC=nop             
  nop                                                                                  #  31    0x7876f  1      OPC=nop             
  nop                                                                                  #  32    0x78770  1      OPC=nop             
  nop                                                                                  #  33    0x78771  1      OPC=nop             
  nop                                                                                  #  34    0x78772  1      OPC=nop             
  nop                                                                                  #  35    0x78773  1      OPC=nop             
  nop                                                                                  #  36    0x78774  1      OPC=nop             
  nop                                                                                  #  37    0x78775  1      OPC=nop             
  nop                                                                                  #  38    0x78776  1      OPC=nop             
  nop                                                                                  #  39    0x78777  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x78778  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x7877e  1      OPC=nop             
  nop                                                                                  #  42    0x7877f  1      OPC=nop             
  nop                                                                                  #  43    0x78780  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x78781  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x78784  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x78786  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x78789  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x7878c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x7878e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x78795  1      OPC=nop             
  nop                                                                                  #  51    0x78796  1      OPC=nop             
  nop                                                                                  #  52    0x78797  1      OPC=nop             
  nop                                                                                  #  53    0x78798  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x78799  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x7879c  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x7879f  1      OPC=nop             
  nop                                                                                  #  57    0x787a0  1      OPC=nop             
  nop                                                                                  #  58    0x787a1  1      OPC=nop             
  nop                                                                                  #  59    0x787a2  1      OPC=nop             
  nop                                                                                  #  60    0x787a3  1      OPC=nop             
  nop                                                                                  #  61    0x787a4  1      OPC=nop             
  nop                                                                                  #  62    0x787a5  1      OPC=nop             
  nop                                                                                  #  63    0x787a6  1      OPC=nop             
  nop                                                                                  #  64    0x787a7  1      OPC=nop             
  nop                                                                                  #  65    0x787a8  1      OPC=nop             
  nop                                                                                  #  66    0x787a9  1      OPC=nop             
  nop                                                                                  #  67    0x787aa  1      OPC=nop             
  nop                                                                                  #  68    0x787ab  1      OPC=nop             
  nop                                                                                  #  69    0x787ac  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecy

