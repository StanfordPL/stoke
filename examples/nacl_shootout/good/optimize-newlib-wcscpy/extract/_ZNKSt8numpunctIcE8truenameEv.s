  .text
  .globl _ZNKSt8numpunctIcE8truenameEv
  .type _ZNKSt8numpunctIcE8truenameEv, @function

#! file-offset 0xb75e0
#! rip-offset  0x775e0
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE8truenameEv:  #        0x775e0  0      OPC=<label>         
  movl %esi, %esi                #  1     0x775e0  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0x775e2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0x775e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x775e5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0x775e7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0x775eb  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0x775ed  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax   #  8     0x775ef  5      OPC=movl_r32_m32    
  nop                            #  9     0x775f4  1      OPC=nop             
  nop                            #  10    0x775f5  1      OPC=nop             
  nop                            #  11    0x775f6  1      OPC=nop             
  nop                            #  12    0x775f7  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0x775f8  6      OPC=andl_r32_imm32  
  nop                            #  14    0x775fe  1      OPC=nop             
  nop                            #  15    0x775ff  1      OPC=nop             
  nop                            #  16    0x77600  1      OPC=nop             
  addq %r15, %rax                #  17    0x77601  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0x77604  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0x77606  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0x77608  1      OPC=popq_r64_1      
  popq %r11                      #  21    0x77609  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0x7760b  7      OPC=andl_r32_imm32  
  nop                            #  23    0x77612  1      OPC=nop             
  nop                            #  24    0x77613  1      OPC=nop             
  nop                            #  25    0x77614  1      OPC=nop             
  nop                            #  26    0x77615  1      OPC=nop             
  addq %r15, %r11                #  27    0x77616  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0x77619  3      OPC=jmpq_r64        
  nop                            #  29    0x7761c  1      OPC=nop             
  nop                            #  30    0x7761d  1      OPC=nop             
  nop                            #  31    0x7761e  1      OPC=nop             
  nop                            #  32    0x7761f  1      OPC=nop             
  nop                            #  33    0x77620  1      OPC=nop             
  nop                            #  34    0x77621  1      OPC=nop             
  nop                            #  35    0x77622  1      OPC=nop             
  nop                            #  36    0x77623  1      OPC=nop             
  nop                            #  37    0x77624  1      OPC=nop             
  nop                            #  38    0x77625  1      OPC=nop             
  nop                            #  39    0x77626  1      OPC=nop             
  nop                            #  40    0x77627  1      OPC=nop             
  nop                            #  41    0x77628  1      OPC=nop             
  nop                            #  42    0x77629  1      OPC=nop             
  nop                            #  43    0x7762a  1      OPC=nop             
  nop                            #  44    0x7762b  1      OPC=nop             
  nop                            #  45    0x7762c  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIcE8truenameEv, .-_ZNKSt8numpunctIcE8truenameEv

