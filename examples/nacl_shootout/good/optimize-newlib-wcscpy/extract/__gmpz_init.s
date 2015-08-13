  .text
  .globl __gmpz_init
  .type __gmpz_init, @function

#! file-offset 0x71300
#! rip-offset  0x31300
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmpz_init:                  #        0x31300  0      OPC=<label>         
  pushq %rbx                   #  1     0x31300  1      OPC=pushq_r64_1     
  movl 0x1003f545(%rip), %eax  #  2     0x31301  6      OPC=movl_r32_m32    
  movl %edi, %ebx              #  3     0x31307  2      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  4     0x31309  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rbx,1)     #  5     0x3130b  8      OPC=movl_m32_imm32  
  movl $0x4, %edi              #  6     0x31313  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %eax       #  7     0x31318  6      OPC=andl_r32_imm32  
  nop                          #  8     0x3131e  1      OPC=nop             
  nop                          #  9     0x3131f  1      OPC=nop             
  nop                          #  10    0x31320  1      OPC=nop             
  addq %r15, %rax              #  11    0x31321  3      OPC=addq_r64_r64    
  callq %rax                   #  12    0x31324  2      OPC=callq_r64       
  movl %ebx, %ebx              #  13    0x31326  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)  #  14    0x31328  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx              #  15    0x31331  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)  #  16    0x31333  5      OPC=movl_m32_r32    
  popq %rbx                    #  17    0x31338  1      OPC=popq_r64_1      
  popq %r11                    #  18    0x31339  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  19    0x3133b  7      OPC=andl_r32_imm32  
  nop                          #  20    0x31342  1      OPC=nop             
  nop                          #  21    0x31343  1      OPC=nop             
  nop                          #  22    0x31344  1      OPC=nop             
  nop                          #  23    0x31345  1      OPC=nop             
  addq %r15, %r11              #  24    0x31346  3      OPC=addq_r64_r64    
  jmpq %r11                    #  25    0x31349  3      OPC=jmpq_r64        
  nop                          #  26    0x3134c  1      OPC=nop             
                                                                            
.size __gmpz_init, .-__gmpz_init

