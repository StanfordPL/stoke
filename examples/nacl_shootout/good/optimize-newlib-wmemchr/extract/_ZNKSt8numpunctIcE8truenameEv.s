  .text
  .globl _ZNKSt8numpunctIcE8truenameEv
  .type _ZNKSt8numpunctIcE8truenameEv, @function

#! file-offset 0xb78e0
#! rip-offset  0x778e0
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE8truenameEv:  #        0x778e0  0      OPC=<label>         
  movl %esi, %esi                #  1     0x778e0  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0x778e2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0x778e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x778e5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0x778e7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0x778eb  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0x778ed  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax   #  8     0x778ef  5      OPC=movl_r32_m32    
  nop                            #  9     0x778f4  1      OPC=nop             
  nop                            #  10    0x778f5  1      OPC=nop             
  nop                            #  11    0x778f6  1      OPC=nop             
  nop                            #  12    0x778f7  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0x778f8  6      OPC=andl_r32_imm32  
  nop                            #  14    0x778fe  1      OPC=nop             
  nop                            #  15    0x778ff  1      OPC=nop             
  nop                            #  16    0x77900  1      OPC=nop             
  addq %r15, %rax                #  17    0x77901  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0x77904  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0x77906  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0x77908  1      OPC=popq_r64_1      
  popq %r11                      #  21    0x77909  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0x7790b  7      OPC=andl_r32_imm32  
  nop                            #  23    0x77912  1      OPC=nop             
  nop                            #  24    0x77913  1      OPC=nop             
  nop                            #  25    0x77914  1      OPC=nop             
  nop                            #  26    0x77915  1      OPC=nop             
  addq %r15, %r11                #  27    0x77916  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0x77919  3      OPC=jmpq_r64        
  nop                            #  29    0x7791c  1      OPC=nop             
  nop                            #  30    0x7791d  1      OPC=nop             
  nop                            #  31    0x7791e  1      OPC=nop             
  nop                            #  32    0x7791f  1      OPC=nop             
  nop                            #  33    0x77920  1      OPC=nop             
  nop                            #  34    0x77921  1      OPC=nop             
  nop                            #  35    0x77922  1      OPC=nop             
  nop                            #  36    0x77923  1      OPC=nop             
  nop                            #  37    0x77924  1      OPC=nop             
  nop                            #  38    0x77925  1      OPC=nop             
  nop                            #  39    0x77926  1      OPC=nop             
  nop                            #  40    0x77927  1      OPC=nop             
  nop                            #  41    0x77928  1      OPC=nop             
  nop                            #  42    0x77929  1      OPC=nop             
  nop                            #  43    0x7792a  1      OPC=nop             
  nop                            #  44    0x7792b  1      OPC=nop             
  nop                            #  45    0x7792c  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIcE8truenameEv, .-_ZNKSt8numpunctIcE8truenameEv

