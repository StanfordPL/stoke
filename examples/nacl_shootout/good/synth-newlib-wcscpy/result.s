  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.wcscpy:                    #        0     0      OPC=<label>         
  leal (%rdi), %edx         #  1     0     2      OPC=leal_r32_m16    
  movl $0x0, (%r15,%rdx,1)  #  2     0x2   8      OPC=movl_m32_imm32  
  movq %rdi, %rax           #  3     0xa   3      OPC=movq_r64_r64    
  leal (%rsi), %edx         #  4     0xd   2      OPC=leal_r32_m16    
  movl (%r15,%rdx,1), %edx  #  5     0xf   4      OPC=movl_r32_m32    
  nop                       #  6     0x13  1      OPC=nop             
  nop                       #  7     0x14  1      OPC=nop             
  movq %rdi, %rcx           #  8     0x15  3      OPC=movq_r64_r64    
  testl %edx, %edx          #  9     0x18  2      OPC=testl_r32_r32   
  je .L_29                  #  10    0x1a  2      OPC=je_label        
  nop                       #  11    0x1c  1      OPC=nop             
  nop                       #  12    0x1d  1      OPC=nop             
  nop                       #  13    0x1e  1      OPC=nop             
  nop                       #  14    0x1f  1      OPC=nop             
.L_18:                      #        0x20  0      OPC=<label>         
  addq $0x4, %rsi           #  15    0x20  4      OPC=addq_r64_imm8   
  addq $0x4, %rcx           #  16    0x24  4      OPC=addq_r64_imm8   
  leal -0x4(%rcx), %r8d     #  17    0x28  4      OPC=leal_r32_m16    
  movq %rdx, (%r15,%r8,1)   #  18    0x2c  4      OPC=movq_m64_r64    
  leal (%rsi), %r8d         #  19    0x30  3      OPC=leal_r32_m32    
  movl (%r15,%r8,1), %edx   #  20    0x33  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  21    0x37  2      OPC=testl_r32_r32   
  jne .L_18                 #  22    0x39  2      OPC=jne_label       
  nopl %eax                 #  23    0x3b  3      OPC=nopl_r32        
  nop                       #  24    0x3e  1      OPC=nop             
  nop                       #  25    0x3f  1      OPC=nop             
.L_29:                      #        0x40  0      OPC=<label>         
  popq %r11                 #  26    0x40  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  27    0x42  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  28    0x46  3      OPC=addq_r64_r64    
  jmpq %r11                 #  29    0x49  3      OPC=jmpq_r64        
                                                                      
.size wcscpy, .-wcscpy
