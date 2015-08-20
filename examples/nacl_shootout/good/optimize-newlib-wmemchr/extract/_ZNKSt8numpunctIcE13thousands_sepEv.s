  .text
  .globl _ZNKSt8numpunctIcE13thousands_sepEv
  .type _ZNKSt8numpunctIcE13thousands_sepEv, @function

#! file-offset 0xb7880
#! rip-offset  0x77880
#! capacity    32 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE13thousands_sepEv:  #        0x77880  0      OPC=<label>         
  movl %edi, %edi                      #  1     0x77880  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  2     0x77882  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax             #  3     0x77884  4      OPC=movl_r32_m32    
  movl %eax, %eax                      #  4     0x77888  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax          #  5     0x7788a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax               #  6     0x7788f  6      OPC=andl_r32_imm32  
  nop                                  #  7     0x77895  1      OPC=nop             
  nop                                  #  8     0x77896  1      OPC=nop             
  nop                                  #  9     0x77897  1      OPC=nop             
  addq %r15, %rax                      #  10    0x77898  3      OPC=addq_r64_r64    
  jmpq %rax                            #  11    0x7789b  2      OPC=jmpq_r64        
  nop                                  #  12    0x7789d  1      OPC=nop             
  nop                                  #  13    0x7789e  1      OPC=nop             
  nop                                  #  14    0x7789f  1      OPC=nop             
  nop                                  #  15    0x778a0  1      OPC=nop             
  nop                                  #  16    0x778a1  1      OPC=nop             
  nop                                  #  17    0x778a2  1      OPC=nop             
  nop                                  #  18    0x778a3  1      OPC=nop             
  nop                                  #  19    0x778a4  1      OPC=nop             
  nop                                  #  20    0x778a5  1      OPC=nop             
                                                                                    
.size _ZNKSt8numpunctIcE13thousands_sepEv, .-_ZNKSt8numpunctIcE13thousands_sepEv

