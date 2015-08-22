  .text
  .globl __gmpz_init
  .type __gmpz_init, @function

#! file-offset 0x71d20
#! rip-offset  0x31d20
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmpz_init:                  #        0x31d20  0      OPC=<label>         
  pushq %rbx                   #  1     0x31d20  1      OPC=pushq_r64_1     
  movl 0x1003eb25(%rip), %eax  #  2     0x31d21  6      OPC=movl_r32_m32    
  movl %edi, %ebx              #  3     0x31d27  2      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  4     0x31d29  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rbx,1)     #  5     0x31d2b  8      OPC=movl_m32_imm32  
  movl $0x4, %edi              #  6     0x31d33  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %eax       #  7     0x31d38  6      OPC=andl_r32_imm32  
  nop                          #  8     0x31d3e  1      OPC=nop             
  nop                          #  9     0x31d3f  1      OPC=nop             
  nop                          #  10    0x31d40  1      OPC=nop             
  addq %r15, %rax              #  11    0x31d41  3      OPC=addq_r64_r64    
  callq %rax                   #  12    0x31d44  2      OPC=callq_r64       
  movl %ebx, %ebx              #  13    0x31d46  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)  #  14    0x31d48  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx              #  15    0x31d51  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)  #  16    0x31d53  5      OPC=movl_m32_r32    
  popq %rbx                    #  17    0x31d58  1      OPC=popq_r64_1      
  popq %r11                    #  18    0x31d59  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  19    0x31d5b  7      OPC=andl_r32_imm32  
  nop                          #  20    0x31d62  1      OPC=nop             
  nop                          #  21    0x31d63  1      OPC=nop             
  nop                          #  22    0x31d64  1      OPC=nop             
  nop                          #  23    0x31d65  1      OPC=nop             
  addq %r15, %r11              #  24    0x31d66  3      OPC=addq_r64_r64    
  jmpq %r11                    #  25    0x31d69  3      OPC=jmpq_r64        
  nop                          #  26    0x31d6c  1      OPC=nop             
                                                                            
.size __gmpz_init, .-__gmpz_init

