  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    44 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.wmemchr:                  #        0     0      OPC=<label>         
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64    
  addl $0x0, %edx          #  2     0x3   6      OPC=addl_r32_imm32  
  je .L_21                 #  3     0x9   2      OPC=je_label        
.L_10:                     #        0xb   0      OPC=<label>         
  incq %rax                #  4     0xb   3      OPC=incq_r64        
  leal (%rdi), %r8d        #  5     0xe   3      OPC=leal_r32_m32    
  cmpl %esi, (%r15,%r8,1)  #  6     0x11  4      OPC=cmpl_m32_r32    
  je .L_28                 #  7     0x15  2      OPC=je_label        
  addq $0x4, %rdi          #  8     0x17  4      OPC=addq_r64_imm8   
  cmpq %rdx, %rax          #  9     0x1b  3      OPC=cmpq_r64_r64    
  jne .L_10                #  10    0x1e  2      OPC=jne_label       
  nop                      #  11    0x20  1      OPC=nop             
  sarq $0xfb, %rax         #  12    0x21  4      OPC=sarq_r64_imm8   
  nop                      #  13    0x25  1      OPC=nop             
  nop                      #  14    0x26  1      OPC=nop             
  nop                      #  15    0x27  1      OPC=nop             
  nop                      #  16    0x28  1      OPC=nop             
.L_21:                     #        0x29  0      OPC=<label>         
  nop                      #  17    0x29  1      OPC=nop             
  nop                      #  18    0x2a  1      OPC=nop             
  retq                     #  19    0x2b  1      OPC=retq            
  nop                      #  20    0x2c  1      OPC=nop             
  nop                      #  21    0x2d  1      OPC=nop             
  nop                      #  22    0x2e  1      OPC=nop             
.L_28:                     #        0x2f  0      OPC=<label>         
  nop                      #  23    0x2f  1      OPC=nop             
  nop                      #  24    0x30  1      OPC=nop             
  movl %r8d, %eax          #  25    0x31  3      OPC=movl_r32_r32    
  nop                      #  26    0x34  1      OPC=nop             
  nop                      #  27    0x35  1      OPC=nop             
  retq                     #  28    0x36  1      OPC=retq            
                                                                     
.size wmemchr, .-wmemchr
