  .text
  .globl pvalloc
  .type pvalloc, @function

#! file-offset 0x157d00
#! rip-offset  0x117d00
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.pvalloc:                       #        0x117d00  0      OPC=<label>        
  movl 0xff60e4a(%rip), %edx    #  1     0x117d00  6      OPC=movl_r32_m32   
  pushq %rbx                    #  2     0x117d06  1      OPC=pushq_r64_1    
  movl %edi, %ebx               #  3     0x117d07  2      OPC=movl_r32_r32   
  testl %edx, %edx              #  4     0x117d09  2      OPC=testl_r32_r32  
  jne .L_117d20                 #  5     0x117d0b  2      OPC=jne_label      
  nop                           #  6     0x117d0d  1      OPC=nop            
  nop                           #  7     0x117d0e  1      OPC=nop            
  nop                           #  8     0x117d0f  1      OPC=nop            
  nop                           #  9     0x117d10  1      OPC=nop            
  nop                           #  10    0x117d11  1      OPC=nop            
  nop                           #  11    0x117d12  1      OPC=nop            
  nop                           #  12    0x117d13  1      OPC=nop            
  nop                           #  13    0x117d14  1      OPC=nop            
  nop                           #  14    0x117d15  1      OPC=nop            
  nop                           #  15    0x117d16  1      OPC=nop            
  nop                           #  16    0x117d17  1      OPC=nop            
  nop                           #  17    0x117d18  1      OPC=nop            
  nop                           #  18    0x117d19  1      OPC=nop            
  nop                           #  19    0x117d1a  1      OPC=nop            
  callq .init_mparams           #  20    0x117d1b  5      OPC=callq_label    
.L_117d20:                      #        0x117d20  0      OPC=<label>        
  movl 0xff60e2e(%rip), %edi    #  21    0x117d20  6      OPC=movl_r32_m32   
  leal -0x1(%rdi,%rbx,1), %esi  #  22    0x117d26  4      OPC=leal_r32_m16   
  movl %edi, %eax               #  23    0x117d2a  2      OPC=movl_r32_r32   
  popq %rbx                     #  24    0x117d2c  1      OPC=popq_r64_1     
  negl %eax                     #  25    0x117d2d  2      OPC=negl_r32       
  andl %eax, %esi               #  26    0x117d2f  2      OPC=andl_r32_r32   
  jmpq .memalign                #  27    0x117d31  5      OPC=jmpq_label_1   
  nop                           #  28    0x117d36  1      OPC=nop            
  nop                           #  29    0x117d37  1      OPC=nop            
  nop                           #  30    0x117d38  1      OPC=nop            
  nop                           #  31    0x117d39  1      OPC=nop            
  nop                           #  32    0x117d3a  1      OPC=nop            
  nop                           #  33    0x117d3b  1      OPC=nop            
  nop                           #  34    0x117d3c  1      OPC=nop            
  nop                           #  35    0x117d3d  1      OPC=nop            
  nop                           #  36    0x117d3e  1      OPC=nop            
  nop                           #  37    0x117d3f  1      OPC=nop            
                                                                             
.size pvalloc, .-pvalloc

