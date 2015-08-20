  .text
  .globl _ZNKSs13find_first_ofEPKcj
  .type _ZNKSs13find_first_ofEPKcj, @function

#! file-offset 0xebda0
#! rip-offset  0xabda0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode             
._ZNKSs13find_first_ofEPKcj:         #        0xabda0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)             #  1     0xabda0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                   #  2     0xabda5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)             #  3     0xabda8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)              #  4     0xabdad  5      OPC=movq_m64_r64   
  movl %edi, %ebx                    #  5     0xabdb2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                   #  6     0xabdb4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                    #  7     0xabdb7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                   #  8     0xabdba  3      OPC=movl_r32_r32   
  movl %r12d, %edi                   #  9     0xabdbd  3      OPC=movl_r32_r32   
  nop                                #  10    0xabdc0  1      OPC=nop            
  nop                                #  11    0xabdc1  1      OPC=nop            
  nop                                #  12    0xabdc2  1      OPC=nop            
  nop                                #  13    0xabdc3  1      OPC=nop            
  nop                                #  14    0xabdc4  1      OPC=nop            
  nop                                #  15    0xabdc5  1      OPC=nop            
  nop                                #  16    0xabdc6  1      OPC=nop            
  nop                                #  17    0xabdc7  1      OPC=nop            
  nop                                #  18    0xabdc8  1      OPC=nop            
  nop                                #  19    0xabdc9  1      OPC=nop            
  nop                                #  20    0xabdca  1      OPC=nop            
  nop                                #  21    0xabdcb  1      OPC=nop            
  nop                                #  22    0xabdcc  1      OPC=nop            
  nop                                #  23    0xabdcd  1      OPC=nop            
  nop                                #  24    0xabdce  1      OPC=nop            
  nop                                #  25    0xabdcf  1      OPC=nop            
  nop                                #  26    0xabdd0  1      OPC=nop            
  nop                                #  27    0xabdd1  1      OPC=nop            
  nop                                #  28    0xabdd2  1      OPC=nop            
  nop                                #  29    0xabdd3  1      OPC=nop            
  nop                                #  30    0xabdd4  1      OPC=nop            
  nop                                #  31    0xabdd5  1      OPC=nop            
  nop                                #  32    0xabdd6  1      OPC=nop            
  nop                                #  33    0xabdd7  1      OPC=nop            
  nop                                #  34    0xabdd8  1      OPC=nop            
  nop                                #  35    0xabdd9  1      OPC=nop            
  nop                                #  36    0xabdda  1      OPC=nop            
  callq .strlen                      #  37    0xabddb  5      OPC=callq_label    
  movl %r13d, %edx                   #  38    0xabde0  3      OPC=movl_r32_r32   
  movl %r12d, %esi                   #  39    0xabde3  3      OPC=movl_r32_r32   
  movl %ebx, %edi                    #  40    0xabde6  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12               #  41    0xabde8  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                  #  42    0xabded  4      OPC=movq_r64_m64   
  movl %eax, %ecx                    #  43    0xabdf1  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13              #  44    0xabdf3  5      OPC=movq_r64_m64   
  addl $0x18, %esp                   #  45    0xabdf8  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                    #  46    0xabdfb  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                     #  47    0xabdfe  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  48    0xabe00  5      OPC=jmpq_label_1   
  nop                                #  49    0xabe05  1      OPC=nop            
  nop                                #  50    0xabe06  1      OPC=nop            
  nop                                #  51    0xabe07  1      OPC=nop            
  nop                                #  52    0xabe08  1      OPC=nop            
  nop                                #  53    0xabe09  1      OPC=nop            
  nop                                #  54    0xabe0a  1      OPC=nop            
  nop                                #  55    0xabe0b  1      OPC=nop            
  nop                                #  56    0xabe0c  1      OPC=nop            
  nop                                #  57    0xabe0d  1      OPC=nop            
  nop                                #  58    0xabe0e  1      OPC=nop            
  nop                                #  59    0xabe0f  1      OPC=nop            
  nop                                #  60    0xabe10  1      OPC=nop            
  nop                                #  61    0xabe11  1      OPC=nop            
  nop                                #  62    0xabe12  1      OPC=nop            
  nop                                #  63    0xabe13  1      OPC=nop            
  nop                                #  64    0xabe14  1      OPC=nop            
  nop                                #  65    0xabe15  1      OPC=nop            
  nop                                #  66    0xabe16  1      OPC=nop            
  nop                                #  67    0xabe17  1      OPC=nop            
  nop                                #  68    0xabe18  1      OPC=nop            
  nop                                #  69    0xabe19  1      OPC=nop            
  nop                                #  70    0xabe1a  1      OPC=nop            
  nop                                #  71    0xabe1b  1      OPC=nop            
  nop                                #  72    0xabe1c  1      OPC=nop            
  nop                                #  73    0xabe1d  1      OPC=nop            
  nop                                #  74    0xabe1e  1      OPC=nop            
  nop                                #  75    0xabe1f  1      OPC=nop            
                                                                                 
.size _ZNKSs13find_first_ofEPKcj, .-_ZNKSs13find_first_ofEPKcj

