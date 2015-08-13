  .text
  .globl _ZNKSt8numpunctIcE9falsenameEv
  .type _ZNKSt8numpunctIcE9falsenameEv, @function

#! file-offset 0xb7620
#! rip-offset  0x77620
#! capacity    64 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE9falsenameEv:  #        0x77620  0      OPC=<label>         
  movl %esi, %esi                 #  1     0x77620  2      OPC=movl_r32_r32    
  pushq %rbx                      #  2     0x77622  1      OPC=pushq_r64_1     
  movl %edi, %ebx                 #  3     0x77623  2      OPC=movl_r32_r32    
  movl %esi, %esi                 #  4     0x77625  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax        #  5     0x77627  4      OPC=movl_r32_m32    
  movl %ebx, %edi                 #  6     0x7762b  2      OPC=movl_r32_r32    
  movl %eax, %eax                 #  7     0x7762d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax    #  8     0x7762f  5      OPC=movl_r32_m32    
  nop                             #  9     0x77634  1      OPC=nop             
  nop                             #  10    0x77635  1      OPC=nop             
  nop                             #  11    0x77636  1      OPC=nop             
  nop                             #  12    0x77637  1      OPC=nop             
  andl $0xffffffe0, %eax          #  13    0x77638  6      OPC=andl_r32_imm32  
  nop                             #  14    0x7763e  1      OPC=nop             
  nop                             #  15    0x7763f  1      OPC=nop             
  nop                             #  16    0x77640  1      OPC=nop             
  addq %r15, %rax                 #  17    0x77641  3      OPC=addq_r64_r64    
  callq %rax                      #  18    0x77644  2      OPC=callq_r64       
  movl %ebx, %eax                 #  19    0x77646  2      OPC=movl_r32_r32    
  popq %rbx                       #  20    0x77648  1      OPC=popq_r64_1      
  popq %r11                       #  21    0x77649  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  22    0x7764b  7      OPC=andl_r32_imm32  
  nop                             #  23    0x77652  1      OPC=nop             
  nop                             #  24    0x77653  1      OPC=nop             
  nop                             #  25    0x77654  1      OPC=nop             
  nop                             #  26    0x77655  1      OPC=nop             
  addq %r15, %r11                 #  27    0x77656  3      OPC=addq_r64_r64    
  jmpq %r11                       #  28    0x77659  3      OPC=jmpq_r64        
  nop                             #  29    0x7765c  1      OPC=nop             
  nop                             #  30    0x7765d  1      OPC=nop             
  nop                             #  31    0x7765e  1      OPC=nop             
  nop                             #  32    0x7765f  1      OPC=nop             
  nop                             #  33    0x77660  1      OPC=nop             
  nop                             #  34    0x77661  1      OPC=nop             
  nop                             #  35    0x77662  1      OPC=nop             
  nop                             #  36    0x77663  1      OPC=nop             
  nop                             #  37    0x77664  1      OPC=nop             
  nop                             #  38    0x77665  1      OPC=nop             
  nop                             #  39    0x77666  1      OPC=nop             
  nop                             #  40    0x77667  1      OPC=nop             
  nop                             #  41    0x77668  1      OPC=nop             
  nop                             #  42    0x77669  1      OPC=nop             
  nop                             #  43    0x7766a  1      OPC=nop             
  nop                             #  44    0x7766b  1      OPC=nop             
  nop                             #  45    0x7766c  1      OPC=nop             
                                                                               
.size _ZNKSt8numpunctIcE9falsenameEv, .-_ZNKSt8numpunctIcE9falsenameEv

