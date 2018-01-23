  .text
  .globl my_memset
  .type my_memset, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.my_memset:          #        0     0      OPC=<label>        
  testl %edx, %edx   #  1     0     2      OPC=testl_r32_r32  
  je .L_20           #  2     0x2   2      OPC=je_label       
  subl $0x1, %edx    #  3     0x4   3      OPC=subl_r32_imm8  
  subq $0x8, %rsp    #  4     0x7   4      OPC=subq_r64_imm8  
  movsbl %sil, %esi  #  5     0xb   4      OPC=movsbl_r32_r8  
  addq $0x1, %rdx    #  6     0xf   4      OPC=addq_r64_imm8  
  callq .L_18        #  7     0x13  5      OPC=callq_label    
.L_18:               #        0x18  0      OPC=<label>        
  addq $0x8, %rsp    #  8     0x18  4      OPC=addq_r64_imm8  
  retq               #  9     0x1c  1      OPC=retq           
  nop                #  10    0x1d  1      OPC=nop            
  nop                #  11    0x1e  1      OPC=nop            
  nop                #  12    0x1f  1      OPC=nop            
.L_20:               #        0x20  0      OPC=<label>        
  movq %rdi, %rax    #  13    0x20  3      OPC=movq_r64_r64   
  retq               #  14    0x23  1      OPC=retq           
  nop                #  15    0x24  1      OPC=nop            
  nop                #  16    0x25  1      OPC=nop            
  nop                #  17    0x26  1      OPC=nop            
  nop                #  18    0x27  1      OPC=nop            
  nop                #  19    0x28  1      OPC=nop            
  nop                #  20    0x29  1      OPC=nop            
  nop                #  21    0x2a  1      OPC=nop            
  nop                #  22    0x2b  1      OPC=nop            
  nop                #  23    0x2c  1      OPC=nop            
  nop                #  24    0x2d  1      OPC=nop            
  nop                #  25    0x2e  1      OPC=nop            
  nop                #  26    0x2f  1      OPC=nop            
                                                              
.size my_memset, .-my_memset

