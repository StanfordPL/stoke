  .text
  .globl _ZNSsaSEc
  .type _ZNSsaSEc, @function

#! file-offset 0xef200
#! rip-offset  0xaf200
#! capacity    96 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNSsaSEc:                          #        0xaf200  0      OPC=<label>         
  pushq %rbx                         #  1     0xaf200  1      OPC=pushq_r64_1     
  movl %edi, %ebx                    #  2     0xaf201  2      OPC=movl_r32_r32    
  movsbl %sil, %r8d                  #  3     0xaf203  4      OPC=movsbl_r32_r8   
  movl %ebx, %ebx                    #  4     0xaf207  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax           #  5     0xaf209  4      OPC=movl_r32_m32    
  movl %ebx, %edi                    #  6     0xaf20d  2      OPC=movl_r32_r32    
  movl $0x1, %ecx                    #  7     0xaf20f  5      OPC=movl_r32_imm32  
  xorl %esi, %esi                    #  8     0xaf214  2      OPC=xorl_r32_r32    
  subl $0xc, %eax                    #  9     0xaf216  3      OPC=subl_r32_imm8   
  movl %eax, %eax                    #  10    0xaf219  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx           #  11    0xaf21b  4      OPC=movl_r32_m32    
  nop                                #  12    0xaf21f  1      OPC=nop             
  nop                                #  13    0xaf220  1      OPC=nop             
  nop                                #  14    0xaf221  1      OPC=nop             
  nop                                #  15    0xaf222  1      OPC=nop             
  nop                                #  16    0xaf223  1      OPC=nop             
  nop                                #  17    0xaf224  1      OPC=nop             
  nop                                #  18    0xaf225  1      OPC=nop             
  nop                                #  19    0xaf226  1      OPC=nop             
  nop                                #  20    0xaf227  1      OPC=nop             
  nop                                #  21    0xaf228  1      OPC=nop             
  nop                                #  22    0xaf229  1      OPC=nop             
  nop                                #  23    0xaf22a  1      OPC=nop             
  nop                                #  24    0xaf22b  1      OPC=nop             
  nop                                #  25    0xaf22c  1      OPC=nop             
  nop                                #  26    0xaf22d  1      OPC=nop             
  nop                                #  27    0xaf22e  1      OPC=nop             
  nop                                #  28    0xaf22f  1      OPC=nop             
  nop                                #  29    0xaf230  1      OPC=nop             
  nop                                #  30    0xaf231  1      OPC=nop             
  nop                                #  31    0xaf232  1      OPC=nop             
  nop                                #  32    0xaf233  1      OPC=nop             
  nop                                #  33    0xaf234  1      OPC=nop             
  nop                                #  34    0xaf235  1      OPC=nop             
  nop                                #  35    0xaf236  1      OPC=nop             
  nop                                #  36    0xaf237  1      OPC=nop             
  nop                                #  37    0xaf238  1      OPC=nop             
  nop                                #  38    0xaf239  1      OPC=nop             
  nop                                #  39    0xaf23a  1      OPC=nop             
  callq ._ZNSs14_M_replace_auxEjjjc  #  40    0xaf23b  5      OPC=callq_label     
  movl %ebx, %eax                    #  41    0xaf240  2      OPC=movl_r32_r32    
  popq %rbx                          #  42    0xaf242  1      OPC=popq_r64_1      
  popq %r11                          #  43    0xaf243  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  44    0xaf245  7      OPC=andl_r32_imm32  
  nop                                #  45    0xaf24c  1      OPC=nop             
  nop                                #  46    0xaf24d  1      OPC=nop             
  nop                                #  47    0xaf24e  1      OPC=nop             
  nop                                #  48    0xaf24f  1      OPC=nop             
  addq %r15, %r11                    #  49    0xaf250  3      OPC=addq_r64_r64    
  jmpq %r11                          #  50    0xaf253  3      OPC=jmpq_r64        
  nop                                #  51    0xaf256  1      OPC=nop             
  nop                                #  52    0xaf257  1      OPC=nop             
  nop                                #  53    0xaf258  1      OPC=nop             
  nop                                #  54    0xaf259  1      OPC=nop             
  nop                                #  55    0xaf25a  1      OPC=nop             
  nop                                #  56    0xaf25b  1      OPC=nop             
  nop                                #  57    0xaf25c  1      OPC=nop             
  nop                                #  58    0xaf25d  1      OPC=nop             
  nop                                #  59    0xaf25e  1      OPC=nop             
  nop                                #  60    0xaf25f  1      OPC=nop             
  nop                                #  61    0xaf260  1      OPC=nop             
  nop                                #  62    0xaf261  1      OPC=nop             
  nop                                #  63    0xaf262  1      OPC=nop             
  nop                                #  64    0xaf263  1      OPC=nop             
  nop                                #  65    0xaf264  1      OPC=nop             
  nop                                #  66    0xaf265  1      OPC=nop             
  nop                                #  67    0xaf266  1      OPC=nop             
                                                                                  
.size _ZNSsaSEc, .-_ZNSsaSEc

