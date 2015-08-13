  .text
  .globl _ZNKSt8numpunctIwE9falsenameEv
  .type _ZNKSt8numpunctIwE9falsenameEv, @function

#! file-offset 0xf0660
#! rip-offset  0xb0660
#! capacity    64 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE9falsenameEv:  #        0xb0660  0      OPC=<label>         
  movl %esi, %esi                 #  1     0xb0660  2      OPC=movl_r32_r32    
  pushq %rbx                      #  2     0xb0662  1      OPC=pushq_r64_1     
  movl %edi, %ebx                 #  3     0xb0663  2      OPC=movl_r32_r32    
  movl %esi, %esi                 #  4     0xb0665  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax        #  5     0xb0667  4      OPC=movl_r32_m32    
  movl %ebx, %edi                 #  6     0xb066b  2      OPC=movl_r32_r32    
  movl %eax, %eax                 #  7     0xb066d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax    #  8     0xb066f  5      OPC=movl_r32_m32    
  nop                             #  9     0xb0674  1      OPC=nop             
  nop                             #  10    0xb0675  1      OPC=nop             
  nop                             #  11    0xb0676  1      OPC=nop             
  nop                             #  12    0xb0677  1      OPC=nop             
  andl $0xffffffe0, %eax          #  13    0xb0678  6      OPC=andl_r32_imm32  
  nop                             #  14    0xb067e  1      OPC=nop             
  nop                             #  15    0xb067f  1      OPC=nop             
  nop                             #  16    0xb0680  1      OPC=nop             
  addq %r15, %rax                 #  17    0xb0681  3      OPC=addq_r64_r64    
  callq %rax                      #  18    0xb0684  2      OPC=callq_r64       
  movl %ebx, %eax                 #  19    0xb0686  2      OPC=movl_r32_r32    
  popq %rbx                       #  20    0xb0688  1      OPC=popq_r64_1      
  popq %r11                       #  21    0xb0689  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  22    0xb068b  7      OPC=andl_r32_imm32  
  nop                             #  23    0xb0692  1      OPC=nop             
  nop                             #  24    0xb0693  1      OPC=nop             
  nop                             #  25    0xb0694  1      OPC=nop             
  nop                             #  26    0xb0695  1      OPC=nop             
  addq %r15, %r11                 #  27    0xb0696  3      OPC=addq_r64_r64    
  jmpq %r11                       #  28    0xb0699  3      OPC=jmpq_r64        
  nop                             #  29    0xb069c  1      OPC=nop             
  nop                             #  30    0xb069d  1      OPC=nop             
  nop                             #  31    0xb069e  1      OPC=nop             
  nop                             #  32    0xb069f  1      OPC=nop             
  nop                             #  33    0xb06a0  1      OPC=nop             
  nop                             #  34    0xb06a1  1      OPC=nop             
  nop                             #  35    0xb06a2  1      OPC=nop             
  nop                             #  36    0xb06a3  1      OPC=nop             
  nop                             #  37    0xb06a4  1      OPC=nop             
  nop                             #  38    0xb06a5  1      OPC=nop             
  nop                             #  39    0xb06a6  1      OPC=nop             
  nop                             #  40    0xb06a7  1      OPC=nop             
  nop                             #  41    0xb06a8  1      OPC=nop             
  nop                             #  42    0xb06a9  1      OPC=nop             
  nop                             #  43    0xb06aa  1      OPC=nop             
  nop                             #  44    0xb06ab  1      OPC=nop             
  nop                             #  45    0xb06ac  1      OPC=nop             
                                                                               
.size _ZNKSt8numpunctIwE9falsenameEv, .-_ZNKSt8numpunctIwE9falsenameEv

