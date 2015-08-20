  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6_M_padEciRSt8ios_basePcPKcRi
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6_M_padEciRSt8ios_basePcPKcRi, @function

#! file-offset 0xc0d20
#! rip-offset  0x80d20
#! capacity    128 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6_M_padEciRSt8ios_basePcPKcRi:  #        0x80d20  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                      #  1     0x80d20  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)                                                                       #  2     0x80d25  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                            #  3     0x80d2a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  4     0x80d2d  3      OPC=addq_r64_r64    
  movl 0x20(%rsp), %ebx                                                                       #  5     0x80d30  4      OPC=movl_r32_m32    
  movl %ecx, %edi                                                                             #  6     0x80d34  2      OPC=movl_r32_r32    
  movl %r9d, %ecx                                                                             #  7     0x80d36  3      OPC=movl_r32_r32    
  movl %edx, %r12d                                                                            #  8     0x80d39  3      OPC=movl_r32_r32    
  movsbl %sil, %esi                                                                           #  9     0x80d3c  4      OPC=movsbl_r32_r8   
  movl %r8d, %edx                                                                             #  10    0x80d40  3      OPC=movl_r32_r32    
  movl %r12d, %r8d                                                                            #  11    0x80d43  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                             #  12    0x80d46  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r9d                                                                    #  13    0x80d48  4      OPC=movl_r32_m32    
  nop                                                                                         #  14    0x80d4c  1      OPC=nop             
  nop                                                                                         #  15    0x80d4d  1      OPC=nop             
  nop                                                                                         #  16    0x80d4e  1      OPC=nop             
  nop                                                                                         #  17    0x80d4f  1      OPC=nop             
  nop                                                                                         #  18    0x80d50  1      OPC=nop             
  nop                                                                                         #  19    0x80d51  1      OPC=nop             
  nop                                                                                         #  20    0x80d52  1      OPC=nop             
  nop                                                                                         #  21    0x80d53  1      OPC=nop             
  nop                                                                                         #  22    0x80d54  1      OPC=nop             
  nop                                                                                         #  23    0x80d55  1      OPC=nop             
  nop                                                                                         #  24    0x80d56  1      OPC=nop             
  nop                                                                                         #  25    0x80d57  1      OPC=nop             
  nop                                                                                         #  26    0x80d58  1      OPC=nop             
  nop                                                                                         #  27    0x80d59  1      OPC=nop             
  nop                                                                                         #  28    0x80d5a  1      OPC=nop             
  callq ._ZNSt5__padIcSt11char_traitsIcEE6_S_padERSt8ios_basecPcPKcii                         #  29    0x80d5b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                             #  30    0x80d60  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rbx,1)                                                                   #  31    0x80d62  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                                                        #  32    0x80d66  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                       #  33    0x80d6b  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                            #  34    0x80d70  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  35    0x80d73  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  36    0x80d76  2      OPC=popq_r64_1      
  nop                                                                                         #  37    0x80d78  1      OPC=nop             
  nop                                                                                         #  38    0x80d79  1      OPC=nop             
  nop                                                                                         #  39    0x80d7a  1      OPC=nop             
  nop                                                                                         #  40    0x80d7b  1      OPC=nop             
  nop                                                                                         #  41    0x80d7c  1      OPC=nop             
  nop                                                                                         #  42    0x80d7d  1      OPC=nop             
  nop                                                                                         #  43    0x80d7e  1      OPC=nop             
  nop                                                                                         #  44    0x80d7f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                                     #  45    0x80d80  7      OPC=andl_r32_imm32  
  nop                                                                                         #  46    0x80d87  1      OPC=nop             
  nop                                                                                         #  47    0x80d88  1      OPC=nop             
  nop                                                                                         #  48    0x80d89  1      OPC=nop             
  nop                                                                                         #  49    0x80d8a  1      OPC=nop             
  addq %r15, %r11                                                                             #  50    0x80d8b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  51    0x80d8e  3      OPC=jmpq_r64        
  nop                                                                                         #  52    0x80d91  1      OPC=nop             
  nop                                                                                         #  53    0x80d92  1      OPC=nop             
  nop                                                                                         #  54    0x80d93  1      OPC=nop             
  nop                                                                                         #  55    0x80d94  1      OPC=nop             
  nop                                                                                         #  56    0x80d95  1      OPC=nop             
  nop                                                                                         #  57    0x80d96  1      OPC=nop             
  nop                                                                                         #  58    0x80d97  1      OPC=nop             
  nop                                                                                         #  59    0x80d98  1      OPC=nop             
  nop                                                                                         #  60    0x80d99  1      OPC=nop             
  nop                                                                                         #  61    0x80d9a  1      OPC=nop             
  nop                                                                                         #  62    0x80d9b  1      OPC=nop             
  nop                                                                                         #  63    0x80d9c  1      OPC=nop             
  nop                                                                                         #  64    0x80d9d  1      OPC=nop             
  nop                                                                                         #  65    0x80d9e  1      OPC=nop             
  nop                                                                                         #  66    0x80d9f  1      OPC=nop             
  nop                                                                                         #  67    0x80da0  1      OPC=nop             
  nop                                                                                         #  68    0x80da1  1      OPC=nop             
  nop                                                                                         #  69    0x80da2  1      OPC=nop             
  nop                                                                                         #  70    0x80da3  1      OPC=nop             
  nop                                                                                         #  71    0x80da4  1      OPC=nop             
  nop                                                                                         #  72    0x80da5  1      OPC=nop             
  nop                                                                                         #  73    0x80da6  1      OPC=nop             
                                                                                                                                           
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6_M_padEciRSt8ios_basePcPKcRi, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6_M_padEciRSt8ios_basePcPKcRi

