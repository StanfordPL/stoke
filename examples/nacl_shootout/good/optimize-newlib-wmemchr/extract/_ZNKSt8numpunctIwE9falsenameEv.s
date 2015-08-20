  .text
  .globl _ZNKSt8numpunctIwE9falsenameEv
  .type _ZNKSt8numpunctIwE9falsenameEv, @function

#! file-offset 0xf0960
#! rip-offset  0xb0960
#! capacity    64 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE9falsenameEv:  #        0xb0960  0      OPC=<label>         
  movl %esi, %esi                 #  1     0xb0960  2      OPC=movl_r32_r32    
  pushq %rbx                      #  2     0xb0962  1      OPC=pushq_r64_1     
  movl %edi, %ebx                 #  3     0xb0963  2      OPC=movl_r32_r32    
  movl %esi, %esi                 #  4     0xb0965  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax        #  5     0xb0967  4      OPC=movl_r32_m32    
  movl %ebx, %edi                 #  6     0xb096b  2      OPC=movl_r32_r32    
  movl %eax, %eax                 #  7     0xb096d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax    #  8     0xb096f  5      OPC=movl_r32_m32    
  nop                             #  9     0xb0974  1      OPC=nop             
  nop                             #  10    0xb0975  1      OPC=nop             
  nop                             #  11    0xb0976  1      OPC=nop             
  nop                             #  12    0xb0977  1      OPC=nop             
  andl $0xffffffe0, %eax          #  13    0xb0978  6      OPC=andl_r32_imm32  
  nop                             #  14    0xb097e  1      OPC=nop             
  nop                             #  15    0xb097f  1      OPC=nop             
  nop                             #  16    0xb0980  1      OPC=nop             
  addq %r15, %rax                 #  17    0xb0981  3      OPC=addq_r64_r64    
  callq %rax                      #  18    0xb0984  2      OPC=callq_r64       
  movl %ebx, %eax                 #  19    0xb0986  2      OPC=movl_r32_r32    
  popq %rbx                       #  20    0xb0988  1      OPC=popq_r64_1      
  popq %r11                       #  21    0xb0989  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  22    0xb098b  7      OPC=andl_r32_imm32  
  nop                             #  23    0xb0992  1      OPC=nop             
  nop                             #  24    0xb0993  1      OPC=nop             
  nop                             #  25    0xb0994  1      OPC=nop             
  nop                             #  26    0xb0995  1      OPC=nop             
  addq %r15, %r11                 #  27    0xb0996  3      OPC=addq_r64_r64    
  jmpq %r11                       #  28    0xb0999  3      OPC=jmpq_r64        
  nop                             #  29    0xb099c  1      OPC=nop             
  nop                             #  30    0xb099d  1      OPC=nop             
  nop                             #  31    0xb099e  1      OPC=nop             
  nop                             #  32    0xb099f  1      OPC=nop             
  nop                             #  33    0xb09a0  1      OPC=nop             
  nop                             #  34    0xb09a1  1      OPC=nop             
  nop                             #  35    0xb09a2  1      OPC=nop             
  nop                             #  36    0xb09a3  1      OPC=nop             
  nop                             #  37    0xb09a4  1      OPC=nop             
  nop                             #  38    0xb09a5  1      OPC=nop             
  nop                             #  39    0xb09a6  1      OPC=nop             
  nop                             #  40    0xb09a7  1      OPC=nop             
  nop                             #  41    0xb09a8  1      OPC=nop             
  nop                             #  42    0xb09a9  1      OPC=nop             
  nop                             #  43    0xb09aa  1      OPC=nop             
  nop                             #  44    0xb09ab  1      OPC=nop             
  nop                             #  45    0xb09ac  1      OPC=nop             
                                                                               
.size _ZNKSt8numpunctIwE9falsenameEv, .-_ZNKSt8numpunctIwE9falsenameEv

