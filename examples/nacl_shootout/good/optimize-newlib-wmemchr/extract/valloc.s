  .text
  .globl valloc
  .type valloc, @function

#! file-offset 0x157d40
#! rip-offset  0x117d40
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode             
.valloc:                      #        0x117d40  0      OPC=<label>        
  movl 0xff60e0a(%rip), %ecx  #  1     0x117d40  6      OPC=movl_r32_m32   
  pushq %rbx                  #  2     0x117d46  1      OPC=pushq_r64_1    
  movl %edi, %ebx             #  3     0x117d47  2      OPC=movl_r32_r32   
  testl %ecx, %ecx            #  4     0x117d49  2      OPC=testl_r32_r32  
  jne .L_117d60               #  5     0x117d4b  2      OPC=jne_label      
  nop                         #  6     0x117d4d  1      OPC=nop            
  nop                         #  7     0x117d4e  1      OPC=nop            
  nop                         #  8     0x117d4f  1      OPC=nop            
  nop                         #  9     0x117d50  1      OPC=nop            
  nop                         #  10    0x117d51  1      OPC=nop            
  nop                         #  11    0x117d52  1      OPC=nop            
  nop                         #  12    0x117d53  1      OPC=nop            
  nop                         #  13    0x117d54  1      OPC=nop            
  nop                         #  14    0x117d55  1      OPC=nop            
  nop                         #  15    0x117d56  1      OPC=nop            
  nop                         #  16    0x117d57  1      OPC=nop            
  nop                         #  17    0x117d58  1      OPC=nop            
  nop                         #  18    0x117d59  1      OPC=nop            
  nop                         #  19    0x117d5a  1      OPC=nop            
  callq .init_mparams         #  20    0x117d5b  5      OPC=callq_label    
.L_117d60:                    #        0x117d60  0      OPC=<label>        
  movl %ebx, %esi             #  21    0x117d60  2      OPC=movl_r32_r32   
  movl 0xff60dec(%rip), %edi  #  22    0x117d62  6      OPC=movl_r32_m32   
  popq %rbx                   #  23    0x117d68  1      OPC=popq_r64_1     
  jmpq .memalign              #  24    0x117d69  5      OPC=jmpq_label_1   
  nop                         #  25    0x117d6e  1      OPC=nop            
  nop                         #  26    0x117d6f  1      OPC=nop            
  nop                         #  27    0x117d70  1      OPC=nop            
  nop                         #  28    0x117d71  1      OPC=nop            
  nop                         #  29    0x117d72  1      OPC=nop            
  nop                         #  30    0x117d73  1      OPC=nop            
  nop                         #  31    0x117d74  1      OPC=nop            
  nop                         #  32    0x117d75  1      OPC=nop            
  nop                         #  33    0x117d76  1      OPC=nop            
  nop                         #  34    0x117d77  1      OPC=nop            
  nop                         #  35    0x117d78  1      OPC=nop            
  nop                         #  36    0x117d79  1      OPC=nop            
  nop                         #  37    0x117d7a  1      OPC=nop            
  nop                         #  38    0x117d7b  1      OPC=nop            
  nop                         #  39    0x117d7c  1      OPC=nop            
  nop                         #  40    0x117d7d  1      OPC=nop            
  nop                         #  41    0x117d7e  1      OPC=nop            
  nop                         #  42    0x117d7f  1      OPC=nop            
                                                                           
.size valloc, .-valloc

