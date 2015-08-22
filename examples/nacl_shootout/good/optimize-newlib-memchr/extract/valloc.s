  .text
  .globl valloc
  .type valloc, @function

#! file-offset 0x158460
#! rip-offset  0x118460
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode             
.valloc:                      #        0x118460  0      OPC=<label>        
  movl 0xff606ea(%rip), %ecx  #  1     0x118460  6      OPC=movl_r32_m32   
  pushq %rbx                  #  2     0x118466  1      OPC=pushq_r64_1    
  movl %edi, %ebx             #  3     0x118467  2      OPC=movl_r32_r32   
  testl %ecx, %ecx            #  4     0x118469  2      OPC=testl_r32_r32  
  jne .L_118480               #  5     0x11846b  2      OPC=jne_label      
  nop                         #  6     0x11846d  1      OPC=nop            
  nop                         #  7     0x11846e  1      OPC=nop            
  nop                         #  8     0x11846f  1      OPC=nop            
  nop                         #  9     0x118470  1      OPC=nop            
  nop                         #  10    0x118471  1      OPC=nop            
  nop                         #  11    0x118472  1      OPC=nop            
  nop                         #  12    0x118473  1      OPC=nop            
  nop                         #  13    0x118474  1      OPC=nop            
  nop                         #  14    0x118475  1      OPC=nop            
  nop                         #  15    0x118476  1      OPC=nop            
  nop                         #  16    0x118477  1      OPC=nop            
  nop                         #  17    0x118478  1      OPC=nop            
  nop                         #  18    0x118479  1      OPC=nop            
  nop                         #  19    0x11847a  1      OPC=nop            
  callq .init_mparams         #  20    0x11847b  5      OPC=callq_label    
.L_118480:                    #        0x118480  0      OPC=<label>        
  movl %ebx, %esi             #  21    0x118480  2      OPC=movl_r32_r32   
  movl 0xff606cc(%rip), %edi  #  22    0x118482  6      OPC=movl_r32_m32   
  popq %rbx                   #  23    0x118488  1      OPC=popq_r64_1     
  jmpq .memalign              #  24    0x118489  5      OPC=jmpq_label_1   
  nop                         #  25    0x11848e  1      OPC=nop            
  nop                         #  26    0x11848f  1      OPC=nop            
  nop                         #  27    0x118490  1      OPC=nop            
  nop                         #  28    0x118491  1      OPC=nop            
  nop                         #  29    0x118492  1      OPC=nop            
  nop                         #  30    0x118493  1      OPC=nop            
  nop                         #  31    0x118494  1      OPC=nop            
  nop                         #  32    0x118495  1      OPC=nop            
  nop                         #  33    0x118496  1      OPC=nop            
  nop                         #  34    0x118497  1      OPC=nop            
  nop                         #  35    0x118498  1      OPC=nop            
  nop                         #  36    0x118499  1      OPC=nop            
  nop                         #  37    0x11849a  1      OPC=nop            
  nop                         #  38    0x11849b  1      OPC=nop            
  nop                         #  39    0x11849c  1      OPC=nop            
  nop                         #  40    0x11849d  1      OPC=nop            
  nop                         #  41    0x11849e  1      OPC=nop            
  nop                         #  42    0x11849f  1      OPC=nop            
                                                                           
.size valloc, .-valloc

