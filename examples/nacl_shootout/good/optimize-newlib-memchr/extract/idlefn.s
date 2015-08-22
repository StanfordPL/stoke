  .text
  .globl idlefn
  .type idlefn, @function

#! file-offset 0x65b20
#! rip-offset  0x25b20
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.idlefn:                       #        0x25b20  0      OPC=<label>         
  movl 0x1005368a(%rip), %eax  #  1     0x25b20  6      OPC=movl_r32_m32    
  subl $0x1, %eax              #  2     0x25b26  3      OPC=subl_r32_imm8   
  movl %eax, 0x10053681(%rip)  #  3     0x25b29  6      OPC=movl_m32_r32    
  testl %eax, %eax             #  4     0x25b2f  2      OPC=testl_r32_r32   
  je .L_25b80                  #  5     0x25b31  2      OPC=je_label        
  movl 0x10053673(%rip), %eax  #  6     0x25b33  6      OPC=movl_r32_m32    
  testb $0x1, %al              #  7     0x25b39  2      OPC=testb_al_imm8   
  nop                          #  8     0x25b3b  1      OPC=nop             
  nop                          #  9     0x25b3c  1      OPC=nop             
  nop                          #  10    0x25b3d  1      OPC=nop             
  nop                          #  11    0x25b3e  1      OPC=nop             
  nop                          #  12    0x25b3f  1      OPC=nop             
  je .L_25b60                  #  13    0x25b40  2      OPC=je_label        
  sarl $0x1, %eax              #  14    0x25b42  2      OPC=sarl_r32_one    
  andl $0x7fff, %eax           #  15    0x25b44  5      OPC=andl_eax_imm32  
  xorl $0xd008, %eax           #  16    0x25b49  5      OPC=xorl_eax_imm32  
  movl %eax, 0x10053658(%rip)  #  17    0x25b4e  6      OPC=movl_m32_r32    
  movl $0x6, %edi              #  18    0x25b54  5      OPC=movl_r32_imm32  
  jmpq .release                #  19    0x25b59  5      OPC=jmpq_label_1    
  xchgw %ax, %ax               #  20    0x25b5e  2      OPC=xchgw_ax_r16    
.L_25b60:                      #        0x25b60  0      OPC=<label>         
  sarl $0x1, %eax              #  21    0x25b60  2      OPC=sarl_r32_one    
  andl $0x7fff, %eax           #  22    0x25b62  5      OPC=andl_eax_imm32  
  movl %eax, 0x1005363f(%rip)  #  23    0x25b67  6      OPC=movl_m32_r32    
  movl $0x5, %edi              #  24    0x25b6d  5      OPC=movl_r32_imm32  
  jmpq .release                #  25    0x25b72  5      OPC=jmpq_label_1    
  nop                          #  26    0x25b77  1      OPC=nop             
  nop                          #  27    0x25b78  1      OPC=nop             
  nop                          #  28    0x25b79  1      OPC=nop             
  nop                          #  29    0x25b7a  1      OPC=nop             
  nop                          #  30    0x25b7b  1      OPC=nop             
  nop                          #  31    0x25b7c  1      OPC=nop             
  nop                          #  32    0x25b7d  1      OPC=nop             
  nop                          #  33    0x25b7e  1      OPC=nop             
  nop                          #  34    0x25b7f  1      OPC=nop             
.L_25b80:                      #        0x25b80  0      OPC=<label>         
  addl $0x1, 0x1004b5ad(%rip)  #  35    0x25b80  7      OPC=addl_m32_imm8   
  movl 0x1005361b(%rip), %eax  #  36    0x25b87  6      OPC=movl_r32_m32    
  movl %eax, %eax              #  37    0x25b8d  2      OPC=movl_r32_r32    
  orl $0x4, 0x10(%r15,%rax,1)  #  38    0x25b8f  6      OPC=orl_m32_imm8    
  movl %eax, %eax              #  39    0x25b95  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  40    0x25b97  4      OPC=movl_r32_m32    
  popq %r11                    #  41    0x25b9b  2      OPC=popq_r64_1      
  nop                          #  42    0x25b9d  1      OPC=nop             
  nop                          #  43    0x25b9e  1      OPC=nop             
  nop                          #  44    0x25b9f  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  45    0x25ba0  7      OPC=andl_r32_imm32  
  nop                          #  46    0x25ba7  1      OPC=nop             
  nop                          #  47    0x25ba8  1      OPC=nop             
  nop                          #  48    0x25ba9  1      OPC=nop             
  nop                          #  49    0x25baa  1      OPC=nop             
  addq %r15, %r11              #  50    0x25bab  3      OPC=addq_r64_r64    
  jmpq %r11                    #  51    0x25bae  3      OPC=jmpq_r64        
  nop                          #  52    0x25bb1  1      OPC=nop             
  nop                          #  53    0x25bb2  1      OPC=nop             
  nop                          #  54    0x25bb3  1      OPC=nop             
  nop                          #  55    0x25bb4  1      OPC=nop             
  nop                          #  56    0x25bb5  1      OPC=nop             
  nop                          #  57    0x25bb6  1      OPC=nop             
  nop                          #  58    0x25bb7  1      OPC=nop             
  nop                          #  59    0x25bb8  1      OPC=nop             
  nop                          #  60    0x25bb9  1      OPC=nop             
  nop                          #  61    0x25bba  1      OPC=nop             
  nop                          #  62    0x25bbb  1      OPC=nop             
  nop                          #  63    0x25bbc  1      OPC=nop             
  nop                          #  64    0x25bbd  1      OPC=nop             
  nop                          #  65    0x25bbe  1      OPC=nop             
  nop                          #  66    0x25bbf  1      OPC=nop             
  nop                          #  67    0x25bc0  1      OPC=nop             
  nop                          #  68    0x25bc1  1      OPC=nop             
  nop                          #  69    0x25bc2  1      OPC=nop             
  nop                          #  70    0x25bc3  1      OPC=nop             
  nop                          #  71    0x25bc4  1      OPC=nop             
  nop                          #  72    0x25bc5  1      OPC=nop             
  nop                          #  73    0x25bc6  1      OPC=nop             
                                                                            
.size idlefn, .-idlefn

