  .text
  .globl pvalloc
  .type pvalloc, @function

#! file-offset 0x157a00
#! rip-offset  0x117a00
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.pvalloc:                       #        0x117a00  0      OPC=<label>        
  movl 0xff6114a(%rip), %edx    #  1     0x117a00  6      OPC=movl_r32_m32   
  pushq %rbx                    #  2     0x117a06  1      OPC=pushq_r64_1    
  movl %edi, %ebx               #  3     0x117a07  2      OPC=movl_r32_r32   
  testl %edx, %edx              #  4     0x117a09  2      OPC=testl_r32_r32  
  jne .L_117a20                 #  5     0x117a0b  2      OPC=jne_label      
  nop                           #  6     0x117a0d  1      OPC=nop            
  nop                           #  7     0x117a0e  1      OPC=nop            
  nop                           #  8     0x117a0f  1      OPC=nop            
  nop                           #  9     0x117a10  1      OPC=nop            
  nop                           #  10    0x117a11  1      OPC=nop            
  nop                           #  11    0x117a12  1      OPC=nop            
  nop                           #  12    0x117a13  1      OPC=nop            
  nop                           #  13    0x117a14  1      OPC=nop            
  nop                           #  14    0x117a15  1      OPC=nop            
  nop                           #  15    0x117a16  1      OPC=nop            
  nop                           #  16    0x117a17  1      OPC=nop            
  nop                           #  17    0x117a18  1      OPC=nop            
  nop                           #  18    0x117a19  1      OPC=nop            
  nop                           #  19    0x117a1a  1      OPC=nop            
  callq .init_mparams           #  20    0x117a1b  5      OPC=callq_label    
.L_117a20:                      #        0x117a20  0      OPC=<label>        
  movl 0xff6112e(%rip), %edi    #  21    0x117a20  6      OPC=movl_r32_m32   
  leal -0x1(%rdi,%rbx,1), %esi  #  22    0x117a26  4      OPC=leal_r32_m16   
  movl %edi, %eax               #  23    0x117a2a  2      OPC=movl_r32_r32   
  popq %rbx                     #  24    0x117a2c  1      OPC=popq_r64_1     
  negl %eax                     #  25    0x117a2d  2      OPC=negl_r32       
  andl %eax, %esi               #  26    0x117a2f  2      OPC=andl_r32_r32   
  jmpq .memalign                #  27    0x117a31  5      OPC=jmpq_label_1   
  nop                           #  28    0x117a36  1      OPC=nop            
  nop                           #  29    0x117a37  1      OPC=nop            
  nop                           #  30    0x117a38  1      OPC=nop            
  nop                           #  31    0x117a39  1      OPC=nop            
  nop                           #  32    0x117a3a  1      OPC=nop            
  nop                           #  33    0x117a3b  1      OPC=nop            
  nop                           #  34    0x117a3c  1      OPC=nop            
  nop                           #  35    0x117a3d  1      OPC=nop            
  nop                           #  36    0x117a3e  1      OPC=nop            
  nop                           #  37    0x117a3f  1      OPC=nop            
                                                                             
.size pvalloc, .-pvalloc

