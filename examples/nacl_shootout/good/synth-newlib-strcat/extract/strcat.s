  .text
  .globl strcat
  .type strcat, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    104 bytes

# Text                           #  Line  RIP   Bytes  Opcode              
.strcat:                         #        0     0      OPC=<label>         
  pushq %rbx                     #  1     0     1      OPC=pushq_r64_1     
  movq %rdi, %rbx                #  2     0x1   3      OPC=movq_r64_r64    
  testb $0x7, %bl                #  3     0x4   3      OPC=testb_r8_imm8   
  jne .L_54                      #  4     0x7   2      OPC=jne_label       
  movq (%rbx), %rax              #  5     0x9   3      OPC=movq_r64_m64    
  movq $0xfefefefefefefeff, %r9  #  6     0xc   10     OPC=movq_r64_imm64  
  movq $0x8080808080808080, %r8  #  7     0x16  10     OPC=movq_r64_imm64  
  leaq (%rax,%r9,1), %rdx        #  8     0x20  4      OPC=leaq_r64_m16    
  notq %rax                      #  9     0x24  3      OPC=notq_r64        
  andq %rdx, %rax                #  10    0x27  3      OPC=andq_r64_r64    
  testq %r8, %rax                #  11    0x2a  3      OPC=testq_r64_r64   
  jne .L_63                      #  12    0x2d  2      OPC=jne_label       
  nop                            #  13    0x2f  1      OPC=nop             
.L_30:                           #        0x30  0      OPC=<label>         
  addq $0x8, %rdi                #  14    0x30  4      OPC=addq_r64_imm8   
  movq (%rdi), %rdx              #  15    0x34  3      OPC=movq_r64_m64    
  leaq (%rdx,%r9,1), %rcx        #  16    0x37  4      OPC=leaq_r64_m16    
  notq %rdx                      #  17    0x3b  3      OPC=notq_r64        
  andq %rcx, %rdx                #  18    0x3e  3      OPC=andq_r64_r64    
  testq %r8, %rdx                #  19    0x41  3      OPC=testq_r64_r64   
  je .L_30                       #  20    0x44  2      OPC=je_label        
  jmpq .L_54                     #  21    0x46  2      OPC=jmpq_label      
  nop                            #  22    0x48  1      OPC=nop             
  nop                            #  23    0x49  1      OPC=nop             
  nop                            #  24    0x4a  1      OPC=nop             
  nop                            #  25    0x4b  1      OPC=nop             
  nop                            #  26    0x4c  1      OPC=nop             
  nop                            #  27    0x4d  1      OPC=nop             
  nop                            #  28    0x4e  1      OPC=nop             
  nop                            #  29    0x4f  1      OPC=nop             
.L_50:                           #        0x50  0      OPC=<label>         
  addq $0x1, %rdi                #  30    0x50  4      OPC=addq_r64_imm8   
.L_54:                           #        0x54  0      OPC=<label>         
  cmpb $0x0, (%rdi)              #  31    0x54  3      OPC=cmpb_m8_imm8    
  jne .L_50                      #  32    0x57  2      OPC=jne_label       
  callq .L_5e                    #  33    0x59  5      OPC=callq_label     
.L_5e:                           #        0x5e  0      OPC=<label>         
  movq %rbx, %rax                #  34    0x5e  3      OPC=movq_r64_r64    
  popq %rbx                      #  35    0x61  1      OPC=popq_r64_1      
  retq                           #  36    0x62  1      OPC=retq            
.L_63:                           #        0x63  0      OPC=<label>         
  movq %rbx, %rdi                #  37    0x63  3      OPC=movq_r64_r64    
  jmpq .L_54                     #  38    0x66  2      OPC=jmpq_label      
                                                                           
.size strcat, .-strcat

