  .text
  .globl _ZNKSt8numpunctIcE9falsenameEv
  .type _ZNKSt8numpunctIcE9falsenameEv, @function

#! file-offset 0xb7920
#! rip-offset  0x77920
#! capacity    64 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE9falsenameEv:  #        0x77920  0      OPC=<label>         
  movl %esi, %esi                 #  1     0x77920  2      OPC=movl_r32_r32    
  pushq %rbx                      #  2     0x77922  1      OPC=pushq_r64_1     
  movl %edi, %ebx                 #  3     0x77923  2      OPC=movl_r32_r32    
  movl %esi, %esi                 #  4     0x77925  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax        #  5     0x77927  4      OPC=movl_r32_m32    
  movl %ebx, %edi                 #  6     0x7792b  2      OPC=movl_r32_r32    
  movl %eax, %eax                 #  7     0x7792d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax    #  8     0x7792f  5      OPC=movl_r32_m32    
  nop                             #  9     0x77934  1      OPC=nop             
  nop                             #  10    0x77935  1      OPC=nop             
  nop                             #  11    0x77936  1      OPC=nop             
  nop                             #  12    0x77937  1      OPC=nop             
  andl $0xffffffe0, %eax          #  13    0x77938  6      OPC=andl_r32_imm32  
  nop                             #  14    0x7793e  1      OPC=nop             
  nop                             #  15    0x7793f  1      OPC=nop             
  nop                             #  16    0x77940  1      OPC=nop             
  addq %r15, %rax                 #  17    0x77941  3      OPC=addq_r64_r64    
  callq %rax                      #  18    0x77944  2      OPC=callq_r64       
  movl %ebx, %eax                 #  19    0x77946  2      OPC=movl_r32_r32    
  popq %rbx                       #  20    0x77948  1      OPC=popq_r64_1      
  popq %r11                       #  21    0x77949  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  22    0x7794b  7      OPC=andl_r32_imm32  
  nop                             #  23    0x77952  1      OPC=nop             
  nop                             #  24    0x77953  1      OPC=nop             
  nop                             #  25    0x77954  1      OPC=nop             
  nop                             #  26    0x77955  1      OPC=nop             
  addq %r15, %r11                 #  27    0x77956  3      OPC=addq_r64_r64    
  jmpq %r11                       #  28    0x77959  3      OPC=jmpq_r64        
  nop                             #  29    0x7795c  1      OPC=nop             
  nop                             #  30    0x7795d  1      OPC=nop             
  nop                             #  31    0x7795e  1      OPC=nop             
  nop                             #  32    0x7795f  1      OPC=nop             
  nop                             #  33    0x77960  1      OPC=nop             
  nop                             #  34    0x77961  1      OPC=nop             
  nop                             #  35    0x77962  1      OPC=nop             
  nop                             #  36    0x77963  1      OPC=nop             
  nop                             #  37    0x77964  1      OPC=nop             
  nop                             #  38    0x77965  1      OPC=nop             
  nop                             #  39    0x77966  1      OPC=nop             
  nop                             #  40    0x77967  1      OPC=nop             
  nop                             #  41    0x77968  1      OPC=nop             
  nop                             #  42    0x77969  1      OPC=nop             
  nop                             #  43    0x7796a  1      OPC=nop             
  nop                             #  44    0x7796b  1      OPC=nop             
  nop                             #  45    0x7796c  1      OPC=nop             
                                                                               
.size _ZNKSt8numpunctIcE9falsenameEv, .-_ZNKSt8numpunctIcE9falsenameEv

