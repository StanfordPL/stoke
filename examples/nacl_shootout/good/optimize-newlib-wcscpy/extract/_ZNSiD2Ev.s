  .text
  .globl _ZNSiD2Ev
  .type _ZNSiD2Ev, @function

#! file-offset 0xa6d80
#! rip-offset  0x66d80
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSiD2Ev:                    #        0x66d80  0      OPC=<label>         
  movl %esi, %esi              #  1     0x66d80  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x66d82  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  3     0x66d84  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax     #  4     0x66d86  4      OPC=movl_r32_m32    
  movl %esi, %esi              #  5     0x66d8a  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx  #  6     0x66d8c  5      OPC=movl_r32_m32    
  movl %edi, %edi              #  7     0x66d91  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  8     0x66d93  4      OPC=movl_m32_r32    
  subl $0xc, %eax              #  9     0x66d97  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  10    0x66d9a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  11    0x66d9c  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  12    0x66da0  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)  #  13    0x66da2  9      OPC=movl_m32_imm32  
  addl %edi, %eax              #  14    0x66dab  2      OPC=addl_r32_r32    
  movl %eax, %eax              #  15    0x66dad  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)     #  16    0x66daf  4      OPC=movl_m32_r32    
  popq %r11                    #  17    0x66db3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  18    0x66db5  7      OPC=andl_r32_imm32  
  nop                          #  19    0x66dbc  1      OPC=nop             
  nop                          #  20    0x66dbd  1      OPC=nop             
  nop                          #  21    0x66dbe  1      OPC=nop             
  nop                          #  22    0x66dbf  1      OPC=nop             
  addq %r15, %r11              #  23    0x66dc0  3      OPC=addq_r64_r64    
  jmpq %r11                    #  24    0x66dc3  3      OPC=jmpq_r64        
  nop                          #  25    0x66dc6  1      OPC=nop             
                                                                            
.size _ZNSiD2Ev, .-_ZNSiD2Ev

