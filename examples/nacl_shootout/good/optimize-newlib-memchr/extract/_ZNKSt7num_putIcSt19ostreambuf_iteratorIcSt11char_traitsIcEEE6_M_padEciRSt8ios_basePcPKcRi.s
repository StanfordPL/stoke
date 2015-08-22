  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6_M_padEciRSt8ios_basePcPKcRi
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6_M_padEciRSt8ios_basePcPKcRi, @function

#! file-offset 0xc1440
#! rip-offset  0x81440
#! capacity    128 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6_M_padEciRSt8ios_basePcPKcRi:  #        0x81440  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                      #  1     0x81440  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)                                                                       #  2     0x81445  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                            #  3     0x8144a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  4     0x8144d  3      OPC=addq_r64_r64    
  movl 0x20(%rsp), %ebx                                                                       #  5     0x81450  4      OPC=movl_r32_m32    
  movl %ecx, %edi                                                                             #  6     0x81454  2      OPC=movl_r32_r32    
  movl %r9d, %ecx                                                                             #  7     0x81456  3      OPC=movl_r32_r32    
  movl %edx, %r12d                                                                            #  8     0x81459  3      OPC=movl_r32_r32    
  movsbl %sil, %esi                                                                           #  9     0x8145c  4      OPC=movsbl_r32_r8   
  movl %r8d, %edx                                                                             #  10    0x81460  3      OPC=movl_r32_r32    
  movl %r12d, %r8d                                                                            #  11    0x81463  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                             #  12    0x81466  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r9d                                                                    #  13    0x81468  4      OPC=movl_r32_m32    
  nop                                                                                         #  14    0x8146c  1      OPC=nop             
  nop                                                                                         #  15    0x8146d  1      OPC=nop             
  nop                                                                                         #  16    0x8146e  1      OPC=nop             
  nop                                                                                         #  17    0x8146f  1      OPC=nop             
  nop                                                                                         #  18    0x81470  1      OPC=nop             
  nop                                                                                         #  19    0x81471  1      OPC=nop             
  nop                                                                                         #  20    0x81472  1      OPC=nop             
  nop                                                                                         #  21    0x81473  1      OPC=nop             
  nop                                                                                         #  22    0x81474  1      OPC=nop             
  nop                                                                                         #  23    0x81475  1      OPC=nop             
  nop                                                                                         #  24    0x81476  1      OPC=nop             
  nop                                                                                         #  25    0x81477  1      OPC=nop             
  nop                                                                                         #  26    0x81478  1      OPC=nop             
  nop                                                                                         #  27    0x81479  1      OPC=nop             
  nop                                                                                         #  28    0x8147a  1      OPC=nop             
  callq ._ZNSt5__padIcSt11char_traitsIcEE6_S_padERSt8ios_basecPcPKcii                         #  29    0x8147b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                             #  30    0x81480  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rbx,1)                                                                   #  31    0x81482  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                                                        #  32    0x81486  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                       #  33    0x8148b  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                            #  34    0x81490  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  35    0x81493  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  36    0x81496  2      OPC=popq_r64_1      
  nop                                                                                         #  37    0x81498  1      OPC=nop             
  nop                                                                                         #  38    0x81499  1      OPC=nop             
  nop                                                                                         #  39    0x8149a  1      OPC=nop             
  nop                                                                                         #  40    0x8149b  1      OPC=nop             
  nop                                                                                         #  41    0x8149c  1      OPC=nop             
  nop                                                                                         #  42    0x8149d  1      OPC=nop             
  nop                                                                                         #  43    0x8149e  1      OPC=nop             
  nop                                                                                         #  44    0x8149f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                                     #  45    0x814a0  7      OPC=andl_r32_imm32  
  nop                                                                                         #  46    0x814a7  1      OPC=nop             
  nop                                                                                         #  47    0x814a8  1      OPC=nop             
  nop                                                                                         #  48    0x814a9  1      OPC=nop             
  nop                                                                                         #  49    0x814aa  1      OPC=nop             
  addq %r15, %r11                                                                             #  50    0x814ab  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  51    0x814ae  3      OPC=jmpq_r64        
  nop                                                                                         #  52    0x814b1  1      OPC=nop             
  nop                                                                                         #  53    0x814b2  1      OPC=nop             
  nop                                                                                         #  54    0x814b3  1      OPC=nop             
  nop                                                                                         #  55    0x814b4  1      OPC=nop             
  nop                                                                                         #  56    0x814b5  1      OPC=nop             
  nop                                                                                         #  57    0x814b6  1      OPC=nop             
  nop                                                                                         #  58    0x814b7  1      OPC=nop             
  nop                                                                                         #  59    0x814b8  1      OPC=nop             
  nop                                                                                         #  60    0x814b9  1      OPC=nop             
  nop                                                                                         #  61    0x814ba  1      OPC=nop             
  nop                                                                                         #  62    0x814bb  1      OPC=nop             
  nop                                                                                         #  63    0x814bc  1      OPC=nop             
  nop                                                                                         #  64    0x814bd  1      OPC=nop             
  nop                                                                                         #  65    0x814be  1      OPC=nop             
  nop                                                                                         #  66    0x814bf  1      OPC=nop             
  nop                                                                                         #  67    0x814c0  1      OPC=nop             
  nop                                                                                         #  68    0x814c1  1      OPC=nop             
  nop                                                                                         #  69    0x814c2  1      OPC=nop             
  nop                                                                                         #  70    0x814c3  1      OPC=nop             
  nop                                                                                         #  71    0x814c4  1      OPC=nop             
  nop                                                                                         #  72    0x814c5  1      OPC=nop             
  nop                                                                                         #  73    0x814c6  1      OPC=nop             
                                                                                                                                           
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6_M_padEciRSt8ios_basePcPKcRi, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6_M_padEciRSt8ios_basePcPKcRi

