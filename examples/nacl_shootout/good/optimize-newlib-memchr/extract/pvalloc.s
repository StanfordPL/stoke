  .text
  .globl pvalloc
  .type pvalloc, @function

#! file-offset 0x158420
#! rip-offset  0x118420
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.pvalloc:                       #        0x118420  0      OPC=<label>        
  movl 0xff6072a(%rip), %edx    #  1     0x118420  6      OPC=movl_r32_m32   
  pushq %rbx                    #  2     0x118426  1      OPC=pushq_r64_1    
  movl %edi, %ebx               #  3     0x118427  2      OPC=movl_r32_r32   
  testl %edx, %edx              #  4     0x118429  2      OPC=testl_r32_r32  
  jne .L_118440                 #  5     0x11842b  2      OPC=jne_label      
  nop                           #  6     0x11842d  1      OPC=nop            
  nop                           #  7     0x11842e  1      OPC=nop            
  nop                           #  8     0x11842f  1      OPC=nop            
  nop                           #  9     0x118430  1      OPC=nop            
  nop                           #  10    0x118431  1      OPC=nop            
  nop                           #  11    0x118432  1      OPC=nop            
  nop                           #  12    0x118433  1      OPC=nop            
  nop                           #  13    0x118434  1      OPC=nop            
  nop                           #  14    0x118435  1      OPC=nop            
  nop                           #  15    0x118436  1      OPC=nop            
  nop                           #  16    0x118437  1      OPC=nop            
  nop                           #  17    0x118438  1      OPC=nop            
  nop                           #  18    0x118439  1      OPC=nop            
  nop                           #  19    0x11843a  1      OPC=nop            
  callq .init_mparams           #  20    0x11843b  5      OPC=callq_label    
.L_118440:                      #        0x118440  0      OPC=<label>        
  movl 0xff6070e(%rip), %edi    #  21    0x118440  6      OPC=movl_r32_m32   
  leal -0x1(%rdi,%rbx,1), %esi  #  22    0x118446  4      OPC=leal_r32_m16   
  movl %edi, %eax               #  23    0x11844a  2      OPC=movl_r32_r32   
  popq %rbx                     #  24    0x11844c  1      OPC=popq_r64_1     
  negl %eax                     #  25    0x11844d  2      OPC=negl_r32       
  andl %eax, %esi               #  26    0x11844f  2      OPC=andl_r32_r32   
  jmpq .memalign                #  27    0x118451  5      OPC=jmpq_label_1   
  nop                           #  28    0x118456  1      OPC=nop            
  nop                           #  29    0x118457  1      OPC=nop            
  nop                           #  30    0x118458  1      OPC=nop            
  nop                           #  31    0x118459  1      OPC=nop            
  nop                           #  32    0x11845a  1      OPC=nop            
  nop                           #  33    0x11845b  1      OPC=nop            
  nop                           #  34    0x11845c  1      OPC=nop            
  nop                           #  35    0x11845d  1      OPC=nop            
  nop                           #  36    0x11845e  1      OPC=nop            
  nop                           #  37    0x11845f  1      OPC=nop            
                                                                             
.size pvalloc, .-pvalloc

