  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    44 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.wmemchr:                  #        0     0      OPC=<label>         
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64    
  subl $0x0, %edx          #  2     0x3   3      OPC=subl_r32_imm8   
  je .L_21                 #  3     0x6   2      OPC=je_label        
  nop                      #  4     0x8   1      OPC=nop             
  nop                      #  5     0x9   1      OPC=nop             
  nop                      #  6     0xa   1      OPC=nop             
  nop                      #  7     0xb   1      OPC=nop             
.L_10:                     #        0xc   0      OPC=<label>         
  addq $0x1, %rax          #  8     0xc   4      OPC=addq_r64_imm8   
  leal (%rdi), %r8d        #  9     0x10  3      OPC=leal_r32_m32    
  cmpl %esi, (%r15,%r8,1)  #  10    0x13  4      OPC=cmpl_m32_r32    
  je .L_28                 #  11    0x17  2      OPC=je_label        
  addq $0x4, %rdi          #  12    0x19  7      OPC=addq_r64_imm32  
  cmpq %rdx, %rax          #  13    0x20  3      OPC=cmpq_r64_r64    
  jne .L_10                #  14    0x23  2      OPC=jne_label       
  sarw $0xf9, %ax          #  15    0x25  4      OPC=sarw_r16_imm8   
.L_21:                     #        0x29  0      OPC=<label>         
  nop                      #  16    0x29  1      OPC=nop             
  nop                      #  17    0x2a  1      OPC=nop             
  nop                      #  18    0x2b  1      OPC=nop             
  nop                      #  19    0x2c  1      OPC=nop             
  retq                     #  20    0x2d  1      OPC=retq            
  nop                      #  21    0x2e  1      OPC=nop             
  nop                      #  22    0x2f  1      OPC=nop             
  nop                      #  23    0x30  1      OPC=nop             
  nop                      #  24    0x31  1      OPC=nop             
  nop                      #  25    0x32  1      OPC=nop             
  nop                      #  26    0x33  1      OPC=nop             
  nop                      #  27    0x34  1      OPC=nop             
.L_28:                     #        0x35  0      OPC=<label>         
  movl %r8d, %eax          #  28    0x35  3      OPC=movl_r32_r32    
  retq                     #  29    0x38  1      OPC=retq            
                                                                     
.size wmemchr, .-wmemchr
