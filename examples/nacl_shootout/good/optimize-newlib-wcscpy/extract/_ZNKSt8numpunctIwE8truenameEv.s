  .text
  .globl _ZNKSt8numpunctIwE8truenameEv
  .type _ZNKSt8numpunctIwE8truenameEv, @function

#! file-offset 0xf0620
#! rip-offset  0xb0620
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE8truenameEv:  #        0xb0620  0      OPC=<label>         
  movl %esi, %esi                #  1     0xb0620  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0xb0622  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0xb0623  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0xb0625  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0xb0627  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0xb062b  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0xb062d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax   #  8     0xb062f  5      OPC=movl_r32_m32    
  nop                            #  9     0xb0634  1      OPC=nop             
  nop                            #  10    0xb0635  1      OPC=nop             
  nop                            #  11    0xb0636  1      OPC=nop             
  nop                            #  12    0xb0637  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0xb0638  6      OPC=andl_r32_imm32  
  nop                            #  14    0xb063e  1      OPC=nop             
  nop                            #  15    0xb063f  1      OPC=nop             
  nop                            #  16    0xb0640  1      OPC=nop             
  addq %r15, %rax                #  17    0xb0641  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0xb0644  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0xb0646  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0xb0648  1      OPC=popq_r64_1      
  popq %r11                      #  21    0xb0649  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0xb064b  7      OPC=andl_r32_imm32  
  nop                            #  23    0xb0652  1      OPC=nop             
  nop                            #  24    0xb0653  1      OPC=nop             
  nop                            #  25    0xb0654  1      OPC=nop             
  nop                            #  26    0xb0655  1      OPC=nop             
  addq %r15, %r11                #  27    0xb0656  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0xb0659  3      OPC=jmpq_r64        
  nop                            #  29    0xb065c  1      OPC=nop             
  nop                            #  30    0xb065d  1      OPC=nop             
  nop                            #  31    0xb065e  1      OPC=nop             
  nop                            #  32    0xb065f  1      OPC=nop             
  nop                            #  33    0xb0660  1      OPC=nop             
  nop                            #  34    0xb0661  1      OPC=nop             
  nop                            #  35    0xb0662  1      OPC=nop             
  nop                            #  36    0xb0663  1      OPC=nop             
  nop                            #  37    0xb0664  1      OPC=nop             
  nop                            #  38    0xb0665  1      OPC=nop             
  nop                            #  39    0xb0666  1      OPC=nop             
  nop                            #  40    0xb0667  1      OPC=nop             
  nop                            #  41    0xb0668  1      OPC=nop             
  nop                            #  42    0xb0669  1      OPC=nop             
  nop                            #  43    0xb066a  1      OPC=nop             
  nop                            #  44    0xb066b  1      OPC=nop             
  nop                            #  45    0xb066c  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIwE8truenameEv, .-_ZNKSt8numpunctIwE8truenameEv

