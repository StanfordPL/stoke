  .text
  .globl _ZNKSt8numpunctIcE8groupingEv
  .type _ZNKSt8numpunctIcE8groupingEv, @function

#! file-offset 0xb78a0
#! rip-offset  0x778a0
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE8groupingEv:  #        0x778a0  0      OPC=<label>         
  movl %esi, %esi                #  1     0x778a0  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0x778a2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0x778a3  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x778a5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0x778a7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0x778ab  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0x778ad  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  8     0x778af  5      OPC=movl_r32_m32    
  nop                            #  9     0x778b4  1      OPC=nop             
  nop                            #  10    0x778b5  1      OPC=nop             
  nop                            #  11    0x778b6  1      OPC=nop             
  nop                            #  12    0x778b7  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0x778b8  6      OPC=andl_r32_imm32  
  nop                            #  14    0x778be  1      OPC=nop             
  nop                            #  15    0x778bf  1      OPC=nop             
  nop                            #  16    0x778c0  1      OPC=nop             
  addq %r15, %rax                #  17    0x778c1  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0x778c4  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0x778c6  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0x778c8  1      OPC=popq_r64_1      
  popq %r11                      #  21    0x778c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0x778cb  7      OPC=andl_r32_imm32  
  nop                            #  23    0x778d2  1      OPC=nop             
  nop                            #  24    0x778d3  1      OPC=nop             
  nop                            #  25    0x778d4  1      OPC=nop             
  nop                            #  26    0x778d5  1      OPC=nop             
  addq %r15, %r11                #  27    0x778d6  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0x778d9  3      OPC=jmpq_r64        
  nop                            #  29    0x778dc  1      OPC=nop             
  nop                            #  30    0x778dd  1      OPC=nop             
  nop                            #  31    0x778de  1      OPC=nop             
  nop                            #  32    0x778df  1      OPC=nop             
  nop                            #  33    0x778e0  1      OPC=nop             
  nop                            #  34    0x778e1  1      OPC=nop             
  nop                            #  35    0x778e2  1      OPC=nop             
  nop                            #  36    0x778e3  1      OPC=nop             
  nop                            #  37    0x778e4  1      OPC=nop             
  nop                            #  38    0x778e5  1      OPC=nop             
  nop                            #  39    0x778e6  1      OPC=nop             
  nop                            #  40    0x778e7  1      OPC=nop             
  nop                            #  41    0x778e8  1      OPC=nop             
  nop                            #  42    0x778e9  1      OPC=nop             
  nop                            #  43    0x778ea  1      OPC=nop             
  nop                            #  44    0x778eb  1      OPC=nop             
  nop                            #  45    0x778ec  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIcE8groupingEv, .-_ZNKSt8numpunctIcE8groupingEv

