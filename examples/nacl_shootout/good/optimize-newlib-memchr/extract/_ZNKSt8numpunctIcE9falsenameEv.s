  .text
  .globl _ZNKSt8numpunctIcE9falsenameEv
  .type _ZNKSt8numpunctIcE9falsenameEv, @function

#! file-offset 0xb8040
#! rip-offset  0x78040
#! capacity    64 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE9falsenameEv:  #        0x78040  0      OPC=<label>         
  movl %esi, %esi                 #  1     0x78040  2      OPC=movl_r32_r32    
  pushq %rbx                      #  2     0x78042  1      OPC=pushq_r64_1     
  movl %edi, %ebx                 #  3     0x78043  2      OPC=movl_r32_r32    
  movl %esi, %esi                 #  4     0x78045  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax        #  5     0x78047  4      OPC=movl_r32_m32    
  movl %ebx, %edi                 #  6     0x7804b  2      OPC=movl_r32_r32    
  movl %eax, %eax                 #  7     0x7804d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax    #  8     0x7804f  5      OPC=movl_r32_m32    
  nop                             #  9     0x78054  1      OPC=nop             
  nop                             #  10    0x78055  1      OPC=nop             
  nop                             #  11    0x78056  1      OPC=nop             
  nop                             #  12    0x78057  1      OPC=nop             
  andl $0xffffffe0, %eax          #  13    0x78058  6      OPC=andl_r32_imm32  
  nop                             #  14    0x7805e  1      OPC=nop             
  nop                             #  15    0x7805f  1      OPC=nop             
  nop                             #  16    0x78060  1      OPC=nop             
  addq %r15, %rax                 #  17    0x78061  3      OPC=addq_r64_r64    
  callq %rax                      #  18    0x78064  2      OPC=callq_r64       
  movl %ebx, %eax                 #  19    0x78066  2      OPC=movl_r32_r32    
  popq %rbx                       #  20    0x78068  1      OPC=popq_r64_1      
  popq %r11                       #  21    0x78069  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  22    0x7806b  7      OPC=andl_r32_imm32  
  nop                             #  23    0x78072  1      OPC=nop             
  nop                             #  24    0x78073  1      OPC=nop             
  nop                             #  25    0x78074  1      OPC=nop             
  nop                             #  26    0x78075  1      OPC=nop             
  addq %r15, %r11                 #  27    0x78076  3      OPC=addq_r64_r64    
  jmpq %r11                       #  28    0x78079  3      OPC=jmpq_r64        
  nop                             #  29    0x7807c  1      OPC=nop             
  nop                             #  30    0x7807d  1      OPC=nop             
  nop                             #  31    0x7807e  1      OPC=nop             
  nop                             #  32    0x7807f  1      OPC=nop             
  nop                             #  33    0x78080  1      OPC=nop             
  nop                             #  34    0x78081  1      OPC=nop             
  nop                             #  35    0x78082  1      OPC=nop             
  nop                             #  36    0x78083  1      OPC=nop             
  nop                             #  37    0x78084  1      OPC=nop             
  nop                             #  38    0x78085  1      OPC=nop             
  nop                             #  39    0x78086  1      OPC=nop             
  nop                             #  40    0x78087  1      OPC=nop             
  nop                             #  41    0x78088  1      OPC=nop             
  nop                             #  42    0x78089  1      OPC=nop             
  nop                             #  43    0x7808a  1      OPC=nop             
  nop                             #  44    0x7808b  1      OPC=nop             
  nop                             #  45    0x7808c  1      OPC=nop             
                                                                               
.size _ZNKSt8numpunctIcE9falsenameEv, .-_ZNKSt8numpunctIcE9falsenameEv

