  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    30 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.wmemset:                   #        0     0      OPC=<label>         
  movl %edi, %eax           #  1     0     2      OPC=movl_r32_r32    
  xorq %rcx, %rcx           #  2     0x2   3      OPC=xorq_r64_r64    
  nop                       #  3     0x5   1      OPC=nop             
  nop                       #  4     0x6   1      OPC=nop             
  nop                       #  5     0x7   1      OPC=nop             
  nop                       #  6     0x8   1      OPC=nop             
  testq %rdx, %rdx          #  7     0x9   3      OPC=testq_r64_r64   
  je .L_1c                  #  8     0xc   2      OPC=je_label        
.L_10:                      #        0xe   0      OPC=<label>         
  leal (%rax,%rcx,4), %r8d  #  9     0xe   4      OPC=leal_r32_m64    
  movl %esi, (%r15,%r8,1)   #  10    0x12  4      OPC=movl_m32_r32    
  addq $0x1, %rcx           #  11    0x16  7      OPC=addq_r64_imm32  
  cmpq %rdx, %rcx           #  12    0x1d  3      OPC=cmpq_r64_r64    
  jne .L_10                 #  13    0x20  2      OPC=jne_label       
.L_1c:                      #        0x22  0      OPC=<label>         
  nop                       #  14    0x22  1      OPC=nop             
  nop                       #  15    0x23  1      OPC=nop             
  retq                      #  16    0x24  1      OPC=retq            
                                                                      
.size wmemset, .-wmemset
