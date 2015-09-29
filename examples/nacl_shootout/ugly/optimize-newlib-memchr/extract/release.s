  .text
  .globl release
  .type release, @function

#! file-offset 0x65aa0
#! rip-offset  0x25aa0
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.release:                          #        0x25aa0  0      OPC=<label>         
  subl $0x8, %esp                  #  1     0x25aa0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  2     0x25aa3  3      OPC=addq_r64_r64    
  nop                              #  3     0x25aa6  1      OPC=nop             
  nop                              #  4     0x25aa7  1      OPC=nop             
  nop                              #  5     0x25aa8  1      OPC=nop             
  nop                              #  6     0x25aa9  1      OPC=nop             
  nop                              #  7     0x25aaa  1      OPC=nop             
  nop                              #  8     0x25aab  1      OPC=nop             
  nop                              #  9     0x25aac  1      OPC=nop             
  nop                              #  10    0x25aad  1      OPC=nop             
  nop                              #  11    0x25aae  1      OPC=nop             
  nop                              #  12    0x25aaf  1      OPC=nop             
  nop                              #  13    0x25ab0  1      OPC=nop             
  nop                              #  14    0x25ab1  1      OPC=nop             
  nop                              #  15    0x25ab2  1      OPC=nop             
  nop                              #  16    0x25ab3  1      OPC=nop             
  nop                              #  17    0x25ab4  1      OPC=nop             
  nop                              #  18    0x25ab5  1      OPC=nop             
  nop                              #  19    0x25ab6  1      OPC=nop             
  nop                              #  20    0x25ab7  1      OPC=nop             
  nop                              #  21    0x25ab8  1      OPC=nop             
  nop                              #  22    0x25ab9  1      OPC=nop             
  nop                              #  23    0x25aba  1      OPC=nop             
  callq .findtcb                   #  24    0x25abb  5      OPC=callq_label     
  movl %eax, %edx                  #  25    0x25ac0  2      OPC=movl_r32_r32    
  testq %rdx, %rdx                 #  26    0x25ac2  3      OPC=testq_r64_r64   
  je .L_25b00                      #  27    0x25ac5  2      OPC=je_label        
  movl %edx, %edx                  #  28    0x25ac7  2      OPC=movl_r32_r32    
  andl $0xfffb, 0x10(%r15,%rdx,1)  #  29    0x25ac9  9      OPC=andl_m32_imm32  
  movl 0x100536d0(%rip), %eax      #  30    0x25ad2  6      OPC=movl_r32_m32    
  movl %edx, %edx                  #  31    0x25ad8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx      #  32    0x25ada  5      OPC=movl_r32_m32    
  nop                              #  33    0x25adf  1      OPC=nop             
  movl %eax, %eax                  #  34    0x25ae0  2      OPC=movl_r32_r32    
  cmpl 0x8(%r15,%rax,1), %ecx      #  35    0x25ae2  5      OPC=cmpl_r32_m32    
  jg .L_25b00                      #  36    0x25ae7  2      OPC=jg_label        
  addl $0x8, %esp                  #  37    0x25ae9  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  38    0x25aec  3      OPC=addq_r64_r64    
  popq %r11                        #  39    0x25aef  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  40    0x25af1  7      OPC=andl_r32_imm32  
  nop                              #  41    0x25af8  1      OPC=nop             
  nop                              #  42    0x25af9  1      OPC=nop             
  nop                              #  43    0x25afa  1      OPC=nop             
  nop                              #  44    0x25afb  1      OPC=nop             
  addq %r15, %r11                  #  45    0x25afc  3      OPC=addq_r64_r64    
  jmpq %r11                        #  46    0x25aff  3      OPC=jmpq_r64        
  nop                              #  47    0x25b02  1      OPC=nop             
  nop                              #  48    0x25b03  1      OPC=nop             
  nop                              #  49    0x25b04  1      OPC=nop             
  nop                              #  50    0x25b05  1      OPC=nop             
  nop                              #  51    0x25b06  1      OPC=nop             
.L_25b00:                          #        0x25b07  0      OPC=<label>         
  movq %rdx, %rax                  #  52    0x25b07  3      OPC=movq_r64_r64    
  addl $0x8, %esp                  #  53    0x25b0a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  54    0x25b0d  3      OPC=addq_r64_r64    
  popq %r11                        #  55    0x25b10  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  56    0x25b12  7      OPC=andl_r32_imm32  
  nop                              #  57    0x25b19  1      OPC=nop             
  nop                              #  58    0x25b1a  1      OPC=nop             
  nop                              #  59    0x25b1b  1      OPC=nop             
  nop                              #  60    0x25b1c  1      OPC=nop             
  addq %r15, %r11                  #  61    0x25b1d  3      OPC=addq_r64_r64    
  jmpq %r11                        #  62    0x25b20  3      OPC=jmpq_r64        
  nop                              #  63    0x25b23  1      OPC=nop             
  nop                              #  64    0x25b24  1      OPC=nop             
  nop                              #  65    0x25b25  1      OPC=nop             
  nop                              #  66    0x25b26  1      OPC=nop             
  nop                              #  67    0x25b27  1      OPC=nop             
  nop                              #  68    0x25b28  1      OPC=nop             
  nop                              #  69    0x25b29  1      OPC=nop             
  nop                              #  70    0x25b2a  1      OPC=nop             
  nop                              #  71    0x25b2b  1      OPC=nop             
  nop                              #  72    0x25b2c  1      OPC=nop             
  nop                              #  73    0x25b2d  1      OPC=nop             
                                                                                
.size release, .-release

