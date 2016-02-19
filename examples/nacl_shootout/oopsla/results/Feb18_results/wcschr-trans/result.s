  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    28 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.wcschr:                   #        0     0      OPC=<label>        
  nop                      #  1     0     1      OPC=nop            
  nop                      #  2     0x1   1      OPC=nop            
  nop                      #  3     0x2   1      OPC=nop            
  nop                      #  4     0x3   1      OPC=nop            
  nop                      #  5     0x4   1      OPC=nop            
  subl $0x0, %edi          #  6     0x5   3      OPC=subl_r32_imm8  
.L_0:                      #        0x8   0      OPC=<label>        
  leal (%rdi), %r8d        #  7     0x8   3      OPC=leal_r32_m16   
  movl (%r15,%r8,1), %eax  #  8     0xb   4      OPC=movl_r32_m32   
  cmpl %esi, %eax          #  9     0xf   2      OPC=cmpl_r32_r32   
  je .L_18                 #  10    0x11  2      OPC=je_label       
  addq $0x4, %rdi          #  11    0x13  4      OPC=addq_r64_imm8  
  testl %eax, %eax         #  12    0x17  2      OPC=testl_r32_r32  
  jne .L_0                 #  13    0x19  2      OPC=jne_label      
  nop                      #  14    0x1b  1      OPC=nop            
  nop                      #  15    0x1c  1      OPC=nop            
  nopl %eax                #  16    0x1d  3      OPC=nopl_r32       
  retq                     #  17    0x20  1      OPC=retq           
  nop                      #  18    0x21  1      OPC=nop            
.L_18:                     #        0x22  0      OPC=<label>        
  movq %rdi, %rax          #  19    0x22  3      OPC=movq_r64_r64   
  retq                     #  20    0x25  1      OPC=retq           
                                                                    
.size wcschr, .-wcschr
