  .text
  .globl _ZNKSt8numpunctIcE8groupingEv
  .type _ZNKSt8numpunctIcE8groupingEv, @function

#! file-offset 0xb75a0
#! rip-offset  0x775a0
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE8groupingEv:  #        0x775a0  0      OPC=<label>         
  movl %esi, %esi                #  1     0x775a0  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0x775a2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0x775a3  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x775a5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0x775a7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0x775ab  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0x775ad  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  8     0x775af  5      OPC=movl_r32_m32    
  nop                            #  9     0x775b4  1      OPC=nop             
  nop                            #  10    0x775b5  1      OPC=nop             
  nop                            #  11    0x775b6  1      OPC=nop             
  nop                            #  12    0x775b7  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0x775b8  6      OPC=andl_r32_imm32  
  nop                            #  14    0x775be  1      OPC=nop             
  nop                            #  15    0x775bf  1      OPC=nop             
  nop                            #  16    0x775c0  1      OPC=nop             
  addq %r15, %rax                #  17    0x775c1  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0x775c4  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0x775c6  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0x775c8  1      OPC=popq_r64_1      
  popq %r11                      #  21    0x775c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0x775cb  7      OPC=andl_r32_imm32  
  nop                            #  23    0x775d2  1      OPC=nop             
  nop                            #  24    0x775d3  1      OPC=nop             
  nop                            #  25    0x775d4  1      OPC=nop             
  nop                            #  26    0x775d5  1      OPC=nop             
  addq %r15, %r11                #  27    0x775d6  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0x775d9  3      OPC=jmpq_r64        
  nop                            #  29    0x775dc  1      OPC=nop             
  nop                            #  30    0x775dd  1      OPC=nop             
  nop                            #  31    0x775de  1      OPC=nop             
  nop                            #  32    0x775df  1      OPC=nop             
  nop                            #  33    0x775e0  1      OPC=nop             
  nop                            #  34    0x775e1  1      OPC=nop             
  nop                            #  35    0x775e2  1      OPC=nop             
  nop                            #  36    0x775e3  1      OPC=nop             
  nop                            #  37    0x775e4  1      OPC=nop             
  nop                            #  38    0x775e5  1      OPC=nop             
  nop                            #  39    0x775e6  1      OPC=nop             
  nop                            #  40    0x775e7  1      OPC=nop             
  nop                            #  41    0x775e8  1      OPC=nop             
  nop                            #  42    0x775e9  1      OPC=nop             
  nop                            #  43    0x775ea  1      OPC=nop             
  nop                            #  44    0x775eb  1      OPC=nop             
  nop                            #  45    0x775ec  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIcE8groupingEv, .-_ZNKSt8numpunctIcE8groupingEv

