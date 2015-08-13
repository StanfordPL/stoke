  .text
  .globl _ZNKSt8numpunctIwE8groupingEv
  .type _ZNKSt8numpunctIwE8groupingEv, @function

#! file-offset 0xf05e0
#! rip-offset  0xb05e0
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE8groupingEv:  #        0xb05e0  0      OPC=<label>         
  movl %esi, %esi                #  1     0xb05e0  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0xb05e2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0xb05e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0xb05e5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0xb05e7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0xb05eb  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0xb05ed  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  8     0xb05ef  5      OPC=movl_r32_m32    
  nop                            #  9     0xb05f4  1      OPC=nop             
  nop                            #  10    0xb05f5  1      OPC=nop             
  nop                            #  11    0xb05f6  1      OPC=nop             
  nop                            #  12    0xb05f7  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0xb05f8  6      OPC=andl_r32_imm32  
  nop                            #  14    0xb05fe  1      OPC=nop             
  nop                            #  15    0xb05ff  1      OPC=nop             
  nop                            #  16    0xb0600  1      OPC=nop             
  addq %r15, %rax                #  17    0xb0601  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0xb0604  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0xb0606  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0xb0608  1      OPC=popq_r64_1      
  popq %r11                      #  21    0xb0609  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0xb060b  7      OPC=andl_r32_imm32  
  nop                            #  23    0xb0612  1      OPC=nop             
  nop                            #  24    0xb0613  1      OPC=nop             
  nop                            #  25    0xb0614  1      OPC=nop             
  nop                            #  26    0xb0615  1      OPC=nop             
  addq %r15, %r11                #  27    0xb0616  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0xb0619  3      OPC=jmpq_r64        
  nop                            #  29    0xb061c  1      OPC=nop             
  nop                            #  30    0xb061d  1      OPC=nop             
  nop                            #  31    0xb061e  1      OPC=nop             
  nop                            #  32    0xb061f  1      OPC=nop             
  nop                            #  33    0xb0620  1      OPC=nop             
  nop                            #  34    0xb0621  1      OPC=nop             
  nop                            #  35    0xb0622  1      OPC=nop             
  nop                            #  36    0xb0623  1      OPC=nop             
  nop                            #  37    0xb0624  1      OPC=nop             
  nop                            #  38    0xb0625  1      OPC=nop             
  nop                            #  39    0xb0626  1      OPC=nop             
  nop                            #  40    0xb0627  1      OPC=nop             
  nop                            #  41    0xb0628  1      OPC=nop             
  nop                            #  42    0xb0629  1      OPC=nop             
  nop                            #  43    0xb062a  1      OPC=nop             
  nop                            #  44    0xb062b  1      OPC=nop             
  nop                            #  45    0xb062c  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIwE8groupingEv, .-_ZNKSt8numpunctIwE8groupingEv

