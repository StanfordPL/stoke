  .text
  .globl _ZNKSt8numpunctIwE8truenameEv
  .type _ZNKSt8numpunctIwE8truenameEv, @function

#! file-offset 0xf0920
#! rip-offset  0xb0920
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE8truenameEv:  #        0xb0920  0      OPC=<label>         
  movl %esi, %esi                #  1     0xb0920  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0xb0922  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0xb0923  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0xb0925  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0xb0927  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0xb092b  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0xb092d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax   #  8     0xb092f  5      OPC=movl_r32_m32    
  nop                            #  9     0xb0934  1      OPC=nop             
  nop                            #  10    0xb0935  1      OPC=nop             
  nop                            #  11    0xb0936  1      OPC=nop             
  nop                            #  12    0xb0937  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0xb0938  6      OPC=andl_r32_imm32  
  nop                            #  14    0xb093e  1      OPC=nop             
  nop                            #  15    0xb093f  1      OPC=nop             
  nop                            #  16    0xb0940  1      OPC=nop             
  addq %r15, %rax                #  17    0xb0941  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0xb0944  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0xb0946  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0xb0948  1      OPC=popq_r64_1      
  popq %r11                      #  21    0xb0949  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0xb094b  7      OPC=andl_r32_imm32  
  nop                            #  23    0xb0952  1      OPC=nop             
  nop                            #  24    0xb0953  1      OPC=nop             
  nop                            #  25    0xb0954  1      OPC=nop             
  nop                            #  26    0xb0955  1      OPC=nop             
  addq %r15, %r11                #  27    0xb0956  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0xb0959  3      OPC=jmpq_r64        
  nop                            #  29    0xb095c  1      OPC=nop             
  nop                            #  30    0xb095d  1      OPC=nop             
  nop                            #  31    0xb095e  1      OPC=nop             
  nop                            #  32    0xb095f  1      OPC=nop             
  nop                            #  33    0xb0960  1      OPC=nop             
  nop                            #  34    0xb0961  1      OPC=nop             
  nop                            #  35    0xb0962  1      OPC=nop             
  nop                            #  36    0xb0963  1      OPC=nop             
  nop                            #  37    0xb0964  1      OPC=nop             
  nop                            #  38    0xb0965  1      OPC=nop             
  nop                            #  39    0xb0966  1      OPC=nop             
  nop                            #  40    0xb0967  1      OPC=nop             
  nop                            #  41    0xb0968  1      OPC=nop             
  nop                            #  42    0xb0969  1      OPC=nop             
  nop                            #  43    0xb096a  1      OPC=nop             
  nop                            #  44    0xb096b  1      OPC=nop             
  nop                            #  45    0xb096c  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIwE8truenameEv, .-_ZNKSt8numpunctIwE8truenameEv

