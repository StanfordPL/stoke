  .text
  .globl _ZNSoD2Ev
  .type _ZNSoD2Ev, @function

#! file-offset 0xdd560
#! rip-offset  0x9d560
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSoD2Ev:                    #        0x9d560  0      OPC=<label>         
  movl %esi, %esi              #  1     0x9d560  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x9d562  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  3     0x9d564  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax     #  4     0x9d566  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  5     0x9d56a  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  6     0x9d56c  4      OPC=movl_m32_r32    
  subl $0xc, %eax              #  7     0x9d570  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  8     0x9d573  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi     #  9     0x9d575  4      OPC=addl_r32_m32    
  movl %esi, %esi              #  10    0x9d579  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %eax  #  11    0x9d57b  5      OPC=movl_r32_m32    
  movl %edi, %edi              #  12    0x9d580  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  13    0x9d582  4      OPC=movl_m32_r32    
  popq %r11                    #  14    0x9d586  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  15    0x9d588  7      OPC=andl_r32_imm32  
  nop                          #  16    0x9d58f  1      OPC=nop             
  nop                          #  17    0x9d590  1      OPC=nop             
  nop                          #  18    0x9d591  1      OPC=nop             
  nop                          #  19    0x9d592  1      OPC=nop             
  addq %r15, %r11              #  20    0x9d593  3      OPC=addq_r64_r64    
  jmpq %r11                    #  21    0x9d596  3      OPC=jmpq_r64        
  nop                          #  22    0x9d599  1      OPC=nop             
  nop                          #  23    0x9d59a  1      OPC=nop             
  nop                          #  24    0x9d59b  1      OPC=nop             
  nop                          #  25    0x9d59c  1      OPC=nop             
  nop                          #  26    0x9d59d  1      OPC=nop             
  nop                          #  27    0x9d59e  1      OPC=nop             
  nop                          #  28    0x9d59f  1      OPC=nop             
  nop                          #  29    0x9d5a0  1      OPC=nop             
  nop                          #  30    0x9d5a1  1      OPC=nop             
  nop                          #  31    0x9d5a2  1      OPC=nop             
  nop                          #  32    0x9d5a3  1      OPC=nop             
  nop                          #  33    0x9d5a4  1      OPC=nop             
  nop                          #  34    0x9d5a5  1      OPC=nop             
  nop                          #  35    0x9d5a6  1      OPC=nop             
                                                                            
.size _ZNSoD2Ev, .-_ZNSoD2Ev

