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
  subl $0x0, %edx          #  4     0x3   6      OPC=subl_r32_imm32  
  xorq %rax, %rax          #  5     0x9   3      OPC=xorq_r64_r64    
  testq %rdx, %rdx         #  6     0xc   3      OPC=testq_r64_r64   
  je .L_21                 #  7     0xf   2      OPC=je_label        
  nop                      #  8     0x11  1      OPC=nop             
.L_10:                     #        0x12  0      OPC=<label>         
  incl %eax                #  9     0x12  2      OPC=incl_r32        
  leal (%rdi), %r8d        #  10    0x14  3      OPC=leal_r32_m64    
  cmpl %esi, (%r15,%r8,1)  #  11    0x17  4      OPC=cmpl_m32_r32    
  je .L_28                 #  12    0x1b  2      OPC=je_label        
  addl $0x4, %edi          #  13    0x1d  3      OPC=addl_r32_imm8   
  cmpq %rdx, %rax          #  14    0x20  3      OPC=cmpq_r64_r64    
  jne .L_10                #  15    0x23  2      OPC=jne_label       
  nop                      #  16    0x25  1      OPC=nop             
  nop                      #  17    0x26  1      OPC=nop             
  sarq $0x10, %rax         #  18    0x27  4      OPC=sarq_r64_imm8   
  nopl %eax                #  19    0x2b  3      OPC=nopl_r32        
  nop                      #  20    0x2e  1      OPC=nop             
  nop                      #  21    0x2f  1      OPC=nop             
.L_21:                     #        0x30  0      OPC=<label>         
  retq                     #  22    0x30  1      OPC=retq            
.L_28:                     #        0x31  0      OPC=<label>         
  nop                      #  23    0x31  1      OPC=nop             
  movl %r8d, %eax          #  24    0x32  3      OPC=movl_r32_r32_1  
  nop                      #  25    0x35  1      OPC=nop             
  nop                      #  26    0x36  1      OPC=nop             
  nop                      #  27    0x37  1      OPC=nop             
  nop                      #  28    0x38  1      OPC=nop             
  nop                      #  29    0x39  1      OPC=nop             
  nop                      #  30    0x3a  1      OPC=nop             
  nop                      #  31    0x3b  1      OPC=nop             
  nop                      #  32    0x3c  1      OPC=nop             
  retq                     #  33    0x3d  1      OPC=retq            
                                                                     
.size wmemchr, .-wmemchr
