  .text
  .globl _ZNKSt8numpunctIcE8groupingEv
  .type _ZNKSt8numpunctIcE8groupingEv, @function

#! file-offset 0xb7fc0
#! rip-offset  0x77fc0
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE8groupingEv:  #        0x77fc0  0      OPC=<label>         
  movl %esi, %esi                #  1     0x77fc0  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0x77fc2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0x77fc3  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x77fc5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0x77fc7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0x77fcb  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0x77fcd  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  8     0x77fcf  5      OPC=movl_r32_m32    
  nop                            #  9     0x77fd4  1      OPC=nop             
  nop                            #  10    0x77fd5  1      OPC=nop             
  nop                            #  11    0x77fd6  1      OPC=nop             
  nop                            #  12    0x77fd7  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0x77fd8  6      OPC=andl_r32_imm32  
  nop                            #  14    0x77fde  1      OPC=nop             
  nop                            #  15    0x77fdf  1      OPC=nop             
  nop                            #  16    0x77fe0  1      OPC=nop             
  addq %r15, %rax                #  17    0x77fe1  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0x77fe4  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0x77fe6  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0x77fe8  1      OPC=popq_r64_1      
  popq %r11                      #  21    0x77fe9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0x77feb  7      OPC=andl_r32_imm32  
  nop                            #  23    0x77ff2  1      OPC=nop             
  nop                            #  24    0x77ff3  1      OPC=nop             
  nop                            #  25    0x77ff4  1      OPC=nop             
  nop                            #  26    0x77ff5  1      OPC=nop             
  addq %r15, %r11                #  27    0x77ff6  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0x77ff9  3      OPC=jmpq_r64        
  nop                            #  29    0x77ffc  1      OPC=nop             
  nop                            #  30    0x77ffd  1      OPC=nop             
  nop                            #  31    0x77ffe  1      OPC=nop             
  nop                            #  32    0x77fff  1      OPC=nop             
  nop                            #  33    0x78000  1      OPC=nop             
  nop                            #  34    0x78001  1      OPC=nop             
  nop                            #  35    0x78002  1      OPC=nop             
  nop                            #  36    0x78003  1      OPC=nop             
  nop                            #  37    0x78004  1      OPC=nop             
  nop                            #  38    0x78005  1      OPC=nop             
  nop                            #  39    0x78006  1      OPC=nop             
  nop                            #  40    0x78007  1      OPC=nop             
  nop                            #  41    0x78008  1      OPC=nop             
  nop                            #  42    0x78009  1      OPC=nop             
  nop                            #  43    0x7800a  1      OPC=nop             
  nop                            #  44    0x7800b  1      OPC=nop             
  nop                            #  45    0x7800c  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIcE8groupingEv, .-_ZNKSt8numpunctIcE8groupingEv

