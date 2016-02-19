  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    44 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.wmemchr:                  #        0     0      OPC=<label>         
  nop                      #  1     0     1      OPC=nop             
  nop                      #  2     0x1   1      OPC=nop             
  nop                      #  3     0x2   1      OPC=nop             
  orl %edx, %edx           #  4     0x3   2      OPC=orl_r32_r32_1   
  xorq %rax, %rax          #  5     0x5   3      OPC=xorq_r64_r64    
  nop                      #  6     0x8   1      OPC=nop             
  testq %rdx, %rdx         #  7     0x9   3      OPC=testq_r64_r64   
  nop                      #  8     0xc   1      OPC=nop             
  nop                      #  9     0xd   1      OPC=nop             
  je .L_21                 #  10    0xe   2      OPC=je_label        
.L_10:                     #        0x10  0      OPC=<label>         
  leal (%rdi), %r8d        #  11    0x10  3      OPC=leal_r32_m16    
  cmpl %esi, (%r15,%r8,1)  #  12    0x13  4      OPC=cmpl_m32_r32    
  je .L_28                 #  13    0x17  2      OPC=je_label        
  incw %ax                 #  14    0x19  3      OPC=incw_r16        
  addw $0x4, %di           #  15    0x1c  4      OPC=addw_r16_imm8   
  cmpq %rdx, %rax          #  16    0x20  3      OPC=cmpq_r64_r64    
  jne .L_10                #  17    0x23  2      OPC=jne_label       
.L_21:                     #        0x25  0      OPC=<label>         
  nop                      #  18    0x25  1      OPC=nop             
  nop                      #  19    0x26  1      OPC=nop             
  nop                      #  20    0x27  1      OPC=nop             
  nop                      #  21    0x28  1      OPC=nop             
  movsbw %dh, %ax          #  22    0x29  4      OPC=movsbw_r16_rh   
  nop                      #  23    0x2d  1      OPC=nop             
  sarq $0x20, %rax         #  24    0x2e  4      OPC=sarq_r64_imm8   
  nop                      #  25    0x32  1      OPC=nop             
  nop                      #  26    0x33  1      OPC=nop             
  retq                     #  27    0x34  1      OPC=retq            
  nop                      #  28    0x35  1      OPC=nop             
  nop                      #  29    0x36  1      OPC=nop             
.L_28:                     #        0x37  0      OPC=<label>         
  nop                      #  30    0x37  1      OPC=nop             
  nop                      #  31    0x38  1      OPC=nop             
  movl %r8d, %eax          #  32    0x39  3      OPC=movl_r32_r32_1  
  retq                     #  33    0x3c  1      OPC=retq            
                                                                     
.size wmemchr, .-wmemchr
