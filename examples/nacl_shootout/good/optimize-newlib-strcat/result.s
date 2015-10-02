  .text
  .globl strcat
  .type strcat, @function

#! file-offset 0x166040
#! rip-offset  0x126040
#! capacity    224 bytes

# Text                         #  Line  RIP       Bytes  Opcode               
.strcat:                       #        0x126040  0      OPC=<label>          
  pushq %rbx                   #  1     0x126040  1      OPC=pushq_r64_1      
  movl %edi, %ebx              #  2     0x126041  2      OPC=movl_r32_r32     
  nop                          #  10    0x126055  1      OPC=nop              
  nop                          #  11    0x126056  1      OPC=nop              
  nop                          #  12    0x126057  1      OPC=nop              
  nop                          #  13    0x126058  1      OPC=nop              
  nop                          #  14    0x126059  1      OPC=nop              
  nop                          #  15    0x12605a  1      OPC=nop              
  nop                          #  16    0x12605b  1      OPC=nop              
  nop                          #  17    0x12605c  1      OPC=nop              
  nop                          #  18    0x12605d  1      OPC=nop              
  nop                          #  19    0x12605e  1      OPC=nop              
  nop                          #  20    0x12605f  1      OPC=nop              
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
.L_126060:                     #        0x126060  0      OPC=<label>          
  addl $0x1, %edi              #  21    0x126060  3      OPC=addl_r32_imm8    
  cmpb $0x0, (%r15,%rdi,1)     # 
  jne .L_126060                # 
  nop                          #  24    0x126069  1      OPC=nop              
  nop                          #  25    0x12606a  1      OPC=nop              
  nop                          #  26    0x12606b  1      OPC=nop              
  nop                          #  27    0x12606c  1      OPC=nop              
  nop                          #  28    0x12606d  1      OPC=nop              
  nop                          #  29    0x12606e  1      OPC=nop              
  nop                          #  35    0x126074  1      OPC=nop              
  nop                          #  36    0x126075  1      OPC=nop              
  nop                          #  37    0x126076  1      OPC=nop              
  nop                          #  38    0x126077  1      OPC=nop              
  nop                          #  39    0x126078  1      OPC=nop              
  nop                          #  40    0x126079  1      OPC=nop              
  nop                          #  41    0x12607a  1      OPC=nop              
  callq .strcpy                #  143   0x1260fb  5      OPC=callq_label      
  movl %ebx, %eax              #  144   0x126100  2      OPC=movl_r32_r32     
  popq %rbx                    #  145   0x126102  1      OPC=popq_r64_1       
  nop                          #  146   0x126103  1      OPC=nop              
  nop                          #  147   0x126104  1      OPC=nop              
  popq %r11                    #  148   0x126105  2      OPC=popq_r64_1       
  andl $0xe0, %r11d            #  149   0x126107  4      OPC=andl_r32_imm8    
  addq %r15, %r11              #  150   0x12610b  3      OPC=addq_r64_r64     
  jmpq %r11                    #  151   0x12610e  3      OPC=jmpq_r64         
                                                                              
.size strcat, .-strcat
