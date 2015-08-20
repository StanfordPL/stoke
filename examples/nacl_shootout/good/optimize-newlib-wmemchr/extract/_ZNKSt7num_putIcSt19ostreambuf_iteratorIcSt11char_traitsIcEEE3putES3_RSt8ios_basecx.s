  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx, @function

#! file-offset 0xb7fc0
#! rip-offset  0x77fc0
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx:  #        0x77fc0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x77fc0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x77fc2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x77fc5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x77fc8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x77fca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x77fcc  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x77fd0  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x77fd3  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                         #  9     0x77fd5  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x77fda  1      OPC=nop             
  nop                                                                                  #  11    0x77fdb  1      OPC=nop             
  nop                                                                                  #  12    0x77fdc  1      OPC=nop             
  nop                                                                                  #  13    0x77fdd  1      OPC=nop             
  nop                                                                                  #  14    0x77fde  1      OPC=nop             
  nop                                                                                  #  15    0x77fdf  1      OPC=nop             
  nop                                                                                  #  16    0x77fe0  1      OPC=nop             
  nop                                                                                  #  17    0x77fe1  1      OPC=nop             
  nop                                                                                  #  18    0x77fe2  1      OPC=nop             
  nop                                                                                  #  19    0x77fe3  1      OPC=nop             
  nop                                                                                  #  20    0x77fe4  1      OPC=nop             
  nop                                                                                  #  21    0x77fe5  1      OPC=nop             
  nop                                                                                  #  22    0x77fe6  1      OPC=nop             
  nop                                                                                  #  23    0x77fe7  1      OPC=nop             
  nop                                                                                  #  24    0x77fe8  1      OPC=nop             
  nop                                                                                  #  25    0x77fe9  1      OPC=nop             
  nop                                                                                  #  26    0x77fea  1      OPC=nop             
  nop                                                                                  #  27    0x77feb  1      OPC=nop             
  nop                                                                                  #  28    0x77fec  1      OPC=nop             
  nop                                                                                  #  29    0x77fed  1      OPC=nop             
  nop                                                                                  #  30    0x77fee  1      OPC=nop             
  nop                                                                                  #  31    0x77fef  1      OPC=nop             
  nop                                                                                  #  32    0x77ff0  1      OPC=nop             
  nop                                                                                  #  33    0x77ff1  1      OPC=nop             
  nop                                                                                  #  34    0x77ff2  1      OPC=nop             
  nop                                                                                  #  35    0x77ff3  1      OPC=nop             
  nop                                                                                  #  36    0x77ff4  1      OPC=nop             
  nop                                                                                  #  37    0x77ff5  1      OPC=nop             
  nop                                                                                  #  38    0x77ff6  1      OPC=nop             
  nop                                                                                  #  39    0x77ff7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x77ff8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x77ffe  1      OPC=nop             
  nop                                                                                  #  42    0x77fff  1      OPC=nop             
  nop                                                                                  #  43    0x78000  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x78001  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x78004  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x78006  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x78009  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x7800c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x7800e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x78015  1      OPC=nop             
  nop                                                                                  #  51    0x78016  1      OPC=nop             
  nop                                                                                  #  52    0x78017  1      OPC=nop             
  nop                                                                                  #  53    0x78018  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x78019  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x7801c  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x7801f  1      OPC=nop             
  nop                                                                                  #  57    0x78020  1      OPC=nop             
  nop                                                                                  #  58    0x78021  1      OPC=nop             
  nop                                                                                  #  59    0x78022  1      OPC=nop             
  nop                                                                                  #  60    0x78023  1      OPC=nop             
  nop                                                                                  #  61    0x78024  1      OPC=nop             
  nop                                                                                  #  62    0x78025  1      OPC=nop             
  nop                                                                                  #  63    0x78026  1      OPC=nop             
  nop                                                                                  #  64    0x78027  1      OPC=nop             
  nop                                                                                  #  65    0x78028  1      OPC=nop             
  nop                                                                                  #  66    0x78029  1      OPC=nop             
  nop                                                                                  #  67    0x7802a  1      OPC=nop             
  nop                                                                                  #  68    0x7802b  1      OPC=nop             
  nop                                                                                  #  69    0x7802c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx

