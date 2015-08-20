  .text
  .globl _ZNKSt8numpunctIwE8groupingEv
  .type _ZNKSt8numpunctIwE8groupingEv, @function

#! file-offset 0xf08e0
#! rip-offset  0xb08e0
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE8groupingEv:  #        0xb08e0  0      OPC=<label>         
  movl %esi, %esi                #  1     0xb08e0  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0xb08e2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0xb08e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0xb08e5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0xb08e7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0xb08eb  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0xb08ed  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  8     0xb08ef  5      OPC=movl_r32_m32    
  nop                            #  9     0xb08f4  1      OPC=nop             
  nop                            #  10    0xb08f5  1      OPC=nop             
  nop                            #  11    0xb08f6  1      OPC=nop             
  nop                            #  12    0xb08f7  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0xb08f8  6      OPC=andl_r32_imm32  
  nop                            #  14    0xb08fe  1      OPC=nop             
  nop                            #  15    0xb08ff  1      OPC=nop             
  nop                            #  16    0xb0900  1      OPC=nop             
  addq %r15, %rax                #  17    0xb0901  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0xb0904  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0xb0906  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0xb0908  1      OPC=popq_r64_1      
  popq %r11                      #  21    0xb0909  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0xb090b  7      OPC=andl_r32_imm32  
  nop                            #  23    0xb0912  1      OPC=nop             
  nop                            #  24    0xb0913  1      OPC=nop             
  nop                            #  25    0xb0914  1      OPC=nop             
  nop                            #  26    0xb0915  1      OPC=nop             
  addq %r15, %r11                #  27    0xb0916  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0xb0919  3      OPC=jmpq_r64        
  nop                            #  29    0xb091c  1      OPC=nop             
  nop                            #  30    0xb091d  1      OPC=nop             
  nop                            #  31    0xb091e  1      OPC=nop             
  nop                            #  32    0xb091f  1      OPC=nop             
  nop                            #  33    0xb0920  1      OPC=nop             
  nop                            #  34    0xb0921  1      OPC=nop             
  nop                            #  35    0xb0922  1      OPC=nop             
  nop                            #  36    0xb0923  1      OPC=nop             
  nop                            #  37    0xb0924  1      OPC=nop             
  nop                            #  38    0xb0925  1      OPC=nop             
  nop                            #  39    0xb0926  1      OPC=nop             
  nop                            #  40    0xb0927  1      OPC=nop             
  nop                            #  41    0xb0928  1      OPC=nop             
  nop                            #  42    0xb0929  1      OPC=nop             
  nop                            #  43    0xb092a  1      OPC=nop             
  nop                            #  44    0xb092b  1      OPC=nop             
  nop                            #  45    0xb092c  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIwE8groupingEv, .-_ZNKSt8numpunctIwE8groupingEv

